# array of array references

my @aoa = (
    [ (1, 2, 3, 4) ],
    [ qw (a b c d e) ],
    [ qw (one two three four five six) ]
);

# this will print pointers
print "@aoa\n";

for (my $i=0 ; $i<=$#aoa ; $i++) {
    # dereference the element and get the array
    @a = @{$aoa[$i]};

    print "@a\n";
}
