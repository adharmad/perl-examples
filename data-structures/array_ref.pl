# array reference

# square brackets used to create a reference
# a reference is a pointer
my $aref = [ qw(aa bb cc dd) ];

# this will print out the pointer
print "$aref\n";

# @$aref is derefrencing the array
for my $elem (@$aref) {
    print "$elem\n";
}

# another way of iteration
# scalar @$aref is size of the array
for (my $i=0 ; $i<=scalar @$aref ; $i++) {
    print "$aref->[$i]\n";
}
