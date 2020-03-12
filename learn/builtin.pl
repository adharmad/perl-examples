use strict;

my $i;
my $ch;

for ($i=65 ; $i<91 ; $i++) {
  $ch = chr($i);
  print "$ch ";
}
print "\n";

# join
my $sep = "::";
my @b = ("a", "bb", "ccc");

my @c = join $sep, @b;

print "@c\n";

# map function
my @lines = ("To be or not to be", "This is a test", "Hello world");
my @words = map {split ' '} @lines;

print "@words\n";

# split function
my $s = "this is a one time test for the split function";
my @arr = split //,$s;

print "@arr\n";

# substr
my $s1 = "another string";
my $s2 = substr ($s1, 3, 6);
print "$s2\n";

