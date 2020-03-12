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

my $val = $myhash{'Hello'};
if ($val eq '') {
    print "null value!!";
} else {
    print "$val\n";
}
