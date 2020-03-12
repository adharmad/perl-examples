# reference to hash

# curly braces create an hash reference
my $href = {
    State => 'CA',
    Capital => 'Sacremento',
    Population => '5 million',
    Governor => 'Terminator'
};

# this will print out the reference
print "$href\n";

# iterate over a hash reference
# prepending with a % is dereferencing
for my $key (keys %$href) {
    print "$key => $href->{$key}\n";
}

# another way of iterating the hash
while (my ($key, $val) = each (%$href)) {
    print "$key ==> $val\n";
}
