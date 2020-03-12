#!/usr/bin/perl -w

use strict;

require "ctime.pl";
require "flush.pl";

use DBI;

my $oracle_sid = "XLDB";
my $login = "provadm";
my $password = "provadm";
my $host = "192.168.50.241";
my $port = "1521";
my $dburl = "dbi:Oracle:host=$host;sid=$oracle_sid;port=$port";

my $dbh = &oracle_login($oracle_sid, $login, $password, $dburl);
$dbh->{LongReadLen} = 64000;

&get_adp_methods();

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

sub get_adp_methods {
	my $obj_name;
	my $obj_key;
	my $pkg_name;
	my $pkg_key;
	my $tos_key;
	my $mil_name;
	my $evt_key;
	my $evt_name;
	my $adp_key;
	my $i;
	my $evt_key_list;
	my $evt_name_list;
	my @mil_names;
	my @evt_keys;
	my @adp_names;
	my @evt_names;
	my @adp_keys;

	# Get the resource name from command line
	$obj_name = $ARGV[0];
	print "Resource Object => $obj_name\n";

	# Get the object key
	my $sql1 = "SELECT obj_key from obj where obj_name='$obj_name'";
	my $cursor1 = $dbh->prepare("$sql1");
	$cursor1->execute;
	$obj_key = $cursor1->fetchrow_array;
	print "Object key -> $obj_key\n";
	$cursor1->finish;

	# Get the pkg_key and pkg_name
	my $sql2 = "SELECT pkg_key, pkg_name from pkg where pkg_type='Provisioning' and  obj_key=$obj_key"; 
	my $cursor2 = $dbh->prepare("$sql2");
	$cursor2->execute;
	($pkg_key, $pkg_name) = $cursor2->fetchrow_array;
	print "Provisioning process name => $pkg_name\n";
	print "pkg Key => $pkg_key\n";
	$cursor2->finish;
	
	# Get tos_key
	my $sql3 = "select tos_key from tos where pkg_key=$pkg_key";
	my $cursor3 = $dbh->prepare("$sql3");
	$cursor3->execute;
	$tos_key = $cursor3->fetchrow_array;
	print "Tos key => $tos_key\n";
	$cursor3->finish;

	# Get mil_names
	my $sql4 = "select evt_key, mil_name from mil where tos_key=$tos_key";
	my $cursor4 = $dbh->prepare("$sql4");
	$cursor4->execute;
	while (($evt_key,$mil_name) = $cursor4->fetchrow_array) {
		push(@mil_names, $mil_name);
		if ($evt_key) {
			push(@evt_keys, $evt_key);
		}
	}
	$cursor4->finish;	
	print "Mil Names => \n";
	for ($i=0 ; $i<=$#mil_names ; $i++) {
		print "\t$mil_names[$i]\n";
	}

	$evt_key_list = join ",", @evt_keys;
	print "$evt_key_list\n";

	# Get evt_names
	my $sql5 = "select distinct(evt_name) from evt where evt_key in ($evt_key_list)";
	my $cursor5 = $dbh->prepare("$sql5");
	$cursor5->execute;
	while ($evt_name = $cursor5->fetchrow_array) {
		push(@evt_names, $evt_name);
	}

	print "Evt names =>\n";
	foreach (@evt_names) {
		print "\t$_\n";
	}

	for ($i=0 ; $i<=$#evt_names ; $i++) {
		$evt_names[$i] = &single_quote_string($evt_names[$i]);
	}

	#my @evt_names1 = map(&single_quote_string, @evt_names);
	$evt_name_list = join ",", @evt_names;

	print "evt_name_list => $evt_name_list\n";
	
	# Get adp keys
	my $sql6 = "select adp_key from adp where adp_name in ($evt_name_list)";
	print "$sql6\n";
	my $cursor6 = $dbh->prepare("$sql6");
	$cursor6->execute;
	while ($adp_key = $cursor6->fetchrow_array) {
		push (@adp_keys, $adp_key);
	}

	print "Adp keys => @adp_keys\n";
	
}

sub single_quote_string {
	my $s = @_[0];
	my $s1 = "'".$s."'";
	return $s1;
	
}
