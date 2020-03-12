use strict;

my @arr = ("one", "two", "three", "four");
my $elem;
my $i;
my $temp;
my @fruits = qw(
                peach
                plum
                apple
                mango
                guava
                lemon
                orange
);

foreach $elem(@arr) {
        print "$elem\n";
}

print "Trying to print by iteration using variable\n";

foreach ($i=0 ; $i<@arr ; $i++) {
        print "$arr[$i]\n";
}

$temp = join($", @arr);
print "$temp\n";

$" = ",";
$temp = join($", @arr);
print "$temp\n";

print "Fruits:\n";

foreach $elem(@fruits) {
        print "$elem\n";
}
print "Size of fruits array = $#fruits\n";

exit;
