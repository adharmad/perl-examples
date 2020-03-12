# hash of array references

my %hoa = (
    first => [ (1) ],
    two => [ (2, 3) ],
    three => [ (4, 5, 6, 7) ],
    four => [ (8, 9, 10, 11, 12) ]
);

# This will print out array references
for my $k (keys %hoa) {
    print "$k => $hoa{$k}\n";
}

# Now print out the actual arrays
for my $k (keys %hoa) {
    # dereference the object inside
    @arr = @{$hoa{$k}};
    print "$k => @arr\n";
}
