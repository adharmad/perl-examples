# try hash operations

my %hash = (
    fname => 'John',
    lname => 'Doe',
    age => '99',
    ssn => '123-456-7890',
    city => 'moscow'
);

# iterate the hash
for my $key (keys %hash) {
    print "$key => $hash{$key}\n";
}

# another way of iterating the hash
while (my ($key, $val) = each (%hash)) {
    print "$key ==> $val\n";
}

