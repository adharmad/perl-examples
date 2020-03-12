#!/usr/bin/perl -w

use strict;

require "ctime.pl";
require "flush.pl";

use DBI;

my $oracle_sid = "XELDB";
my $login = "lehadm";
my $password = "lehadm";
my $host = "192.168.50.94";
my $port = "1521";
my $dburl = "dbi:Oracle:host=$host;sid=$oracle_sid;port=$port";

my $dbh = &oracle_login($oracle_sid, $login, $password, $dburl);
$dbh->{LongReadLen} = 64000;

&doit();

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

sub handle_error {
    my $errmsg = @_[0];
    print "$errmsg\n";
    print "$DBI::errstr\n";
    $dbh->rollback;
    &oracle_logoff($dbh);
    exit;
}

sub doit {
    
    my ($sdk_key, $sdk_name);
    
    my $sql_statement1 = "SELECT sdk.sdk_name, sdk.sdk_key from sdk sdk, tos tos where tos.sdk_key = sdk.sdk_key";
    my $cursor1;
    
    ($cursor1 = $dbh->prepare("$sql_statement1")) || &handle_error("Could not prepare select cursor");
    
    ($cursor1->execute) || &handle_error("Count not execute select cursor");
    
    while (( $sdk_key, $sdk_name) = $cursor1->fetchrow_array) {
	print "sdk_key --> $sdk_name\n";
    }
    
    ($cursor1->execute) || &handle_error("Count not finish cursor");
}
