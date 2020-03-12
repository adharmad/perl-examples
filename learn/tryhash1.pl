use strict;

# try storing numbers as values of a hash and modify it

my %myhash = (
	      Amol => 10,
	      Bags => 20,
	      Vishal => 30,
	      Madhura => 40
);

my @keys = keys(%myhash);
my $key;

# print hash
foreach $key (@keys) {
    print "$key => $myhash{$key}\n";
}

# modify values of hash
foreach $key (@keys) {
    $myhash{$key}++;
    $myhash{$key} += 12;
}

# print hash
foreach $key (@keys) {
    print "$key => $myhash{$key}\n";
}
