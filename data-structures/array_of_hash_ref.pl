# array of hash references

my @aoh = (
    { 
        Name => 'Amol',
        Age => '33',
        City => 'San Francisco'
    },
    {
        Name => 'Vishal',
        Age => '32',
        City => 'Hyderabad'
    },
    {
        Name => 'Eshwar',
        Age => '33',
        City => 'Bangalore'
    }
);

# this will print the pointers to the hashes
print "@aoh\n";

# Now let us iterate through this list and extract what we want
for (my $i=0 ; $i<=$#aoh ; $i++) {
    # get the hash reference inside
    $href = $aoh[$i];

    for $k (keys %$href) {
        print "$k => $href->{$k}\n";
    }

    # This can be done in another way as below
    #%h = %{$aoh[$i]};
    #for $k (keys %h) {
    #    print "$k => $h{$k}\n";
    #}

    print "------------\n";
}
