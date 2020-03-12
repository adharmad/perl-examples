#!/usr/bin/perl -w
# hash of array references
# modify the array

use strict;

my %hoa = (
    first => [ (1) ],
    two => [ (2, 3) ],
    three => [ (4, 5, 6, 7) ],
    four => [ (8, 9, 10, 11, 12) ]
);

push (@{$hoa{"first"}}, "a");
push (@{$hoa{"first"}}, "b");
push (@{$hoa{"first"}}, "c");

# Now print out the actual arrays
for my $k (keys %hoa) {
    # dereference the object inside
    my @arr = @{$hoa{$k}};
    print "$k => @arr\n";
}
