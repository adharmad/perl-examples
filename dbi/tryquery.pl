#!/usr/bin/perl -w

use strict;

require "ctime.pl";
require "flush.pl";

use DBI;

my $oracle_sid = "FOODB";
my $login = "scott";
my $password = "tiger";
my $host = "192.168.50.124";
my $port = "1521";
my $dburl = "dbi:Oracle:host=$host;sid=$oracle_sid;port=$port";

my $dbh = &oracle_login($oracle_sid, $login, $password, $dburl);
$dbh->{LongReadLen} = 64000;

&performTest();

&oracle_logoff($dbh);
exit;

sub oracle_login {
	my ($oracle_sid, $login, $password, $dbURL) = @_;
	my ($temp_dbh);

	print "Attempting Oracle Login ...\n";

	unless ($temp_dbh = DBI->connect($dbURL, "$login", $password, 
		{AutoCommit => 0}) ) {
		print "Oracle Login failed as $login";
		print "$DBI::errstr";
		exit;
	}

	print "Login successful\n";
	return $temp_dbh;
}

sub oracle_logoff {
	($dbh) = @_;

	print "Attempting Oracle Logoff ...\n";
	unless ($dbh->disconnect) {
		print "Count not disconnect from Oracle";
		print "$DBI::errstr";
		exit;
	}
	print "Logoff successful\n";
}

sub performTest {

	my ($user_login, $user_password, $fn, $ln);

	# select data from USR table
	print "Select from USR...\n";

	my $sql_statement = "SELECT login, password, first_name, last_name from usr";
	my $cursor;

	unless ($cursor = $dbh->prepare("$sql_statement")) {
		print "Could not prepare select cursor\n";
		print "$DBI::errstr";
		$dbh->rollback;
		&oracle_logoff($dbh);
		exit;
  	}

	unless ($cursor->execute) {
		print "Count not execute select cursor\n";
		print "$DBI::errstr";
		$dbh->rollback;
		&oracle_logoff($dbh);
		exit;
	}

	while (( $login, $password, $fn, $ln) = $cursor->fetchrow_array) {
    		print "$login --> $fn --> $ln --> $password\n";
  	}

	unless ($cursor->finish) {
		print "Could not finish cursor\n";
		print "$DBI::errstr";
	
		$dbh->rollback;
		&oracle_logoff($dbh);
		exit;
	}

	print "Query executed successfully\n";
}
