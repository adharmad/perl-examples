#!/usr/bin/perl -Tw
# shell sort

use strict;
$|++; # force auto flush of output buffer

sub shell_sort {
    my $arr = $_[0]; # array to sort

    my @arr_dref = @$arr;
    my $size = $#arr_dref;
    my $inc = $size/2;

    while ($inc > 0) {
        for (my $i=$inc ; $i<$size ; $i+
    }

    # incomplete
}

my @arr = ();
my $max = 100;
while ($max > 0) {
    push @arr, $max;
    $max--;
}

shell_sort(\@arr);
print "@arr\n";

