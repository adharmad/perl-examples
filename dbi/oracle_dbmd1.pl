#!/usr/bin/perl -w

use strict;

require "ctime.pl";
require "flush.pl";

use DBI;

my $oracle_sid = "FOODB";
my $login = "scott";
my $password = "tiger";
my $host = "dbhost";
my $port = "1521";
my $dburl = "dbi:Oracle:host=$host;sid=$oracle_sid;port=$port";

my $dbh = &oracle_login($oracle_sid, $login, $password, $dburl);
$dbh->{LongReadLen} = 64000;

&get_dbmd($dbh);

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


sub get_dbmd {
    my $dbh = shift;

    ### Get a list of tables and views
    my @tables = $dbh->tables();

    ### Print 'em out
    foreach my $table ( @tables ) {
        print "Table: $table\n";
    }
}








