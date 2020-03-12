# array of hashes

my @aoh = (
    ( 
        Name => 'Alice',
        Age => '99',
        City => 'Seattle'
    ),
    (
        Name => 'Bob',
        Age => '55',
        City => 'Istanbul'
    ),
    (
        Name => 'Harry',
        Age => '88',
        City => 'Berlin'
    ),
);

# this entire list is flattened out into a single array
print "@aoh\n";
print "$#aoh\n";
