# join function

my $s = "This is my string";
my @words = split (/ /, $s);

print "@words\n";

my $ss = join("_", @words);

print "$ss\n";
