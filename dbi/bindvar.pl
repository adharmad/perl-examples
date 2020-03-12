#!/usr/bin/perl -w

use strict;
use DBI;

# database connection parameters
my $oracle_sid = "FOODB";
my $login = "scott";
my $password = "tiger";
my $host = "192.168.50.241";
my $port = "1521";
my $dburl = "dbi:Oracle:host=$host;sid=$oracle_sid;port=$port";

my $dbh;
my $sth;
my @row;
my $usr;

# connect to the database
print "Connecting to the database\n";
$dbh = DBI->connect($dburl, $login, $password, 
		    { RaiseError => 1, AutoCommit => 0 });

# Searching for users starting with XEL
$sth = $dbh->prepare("SELECT login, password FROM usr WHERE login like ?");

$usr = "%";
$sth->execute($usr);

while ( @row = $sth->fetchrow_array ) {
    print "@row\n";
}

print "Disconnecting from the database\n";
$dbh->disconnect;

