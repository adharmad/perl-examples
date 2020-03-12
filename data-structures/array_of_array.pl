# array of array

# perl flattens it out into a single array
my @aoa = (
    (1, 2, 3, 4),
    qw (a b c d e),
    qw (one two three four five six)
);

print "@aoa\n";
print "Length = $#aoa\n";

my @aoa1 = (
    (1, 2, 3),
    (4, 5, 6),
    (7, 8, 9)
);

print "@aoa1\n";
