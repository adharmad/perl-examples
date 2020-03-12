# hash of hash

my %hoh = (
    a => (
        1 => '1',
        2 => '2'
    ),
    b => (
        3 => '3',
        4 => '4',
        5 => '5',
        6 => '6'
    ),
    c => (
        7 => '7',
        8 => '8',
        9 => '9'
    )
);

# the entire hash and all the hashes inside got flattened 
# out into a single hash with key and values alternating
for my $k (keys %hoh) {
    print "$k => $hoh{$k}\n";
}
