# hash of hash references

my %hohref = (
    a => {
        1 => '1',
        2 => '2'
    },
    b => {
        3 => '3',
        4 => '4',
        5 => '5',
        6 => '6'
    },
    c => {
        7 => '7',
        8 => '8',
        9 => '9'
    }
);

# this will print out the pointers
for my $k (keys %hohref) {
    print "$k => $hohref{$k}\n";
}

# now let us print out the real thing
for my $k (keys %hohref) {
    $href = $hohref{$k};
    print "$k => \n";

    for my $k1 (keys %$href) {
        print "\t$k1 => $href->{$k1}\n";
    }
    print "-----------\n";
}

