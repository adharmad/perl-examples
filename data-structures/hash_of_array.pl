# hash of array

my %hoa = (
    first => (1),
    two => (2, 3),
    three => (4, 5, 6, 7),
    four => (8, 9, 10, 11, 12)
);

# the entire hash and all the arrays  inside got flattened 
# out into a single hash with key and values alternating
for my $k (keys %hoa) {
    print "$k => $hoa{$k}\n";
}
