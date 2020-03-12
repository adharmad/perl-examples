#!/usr/bin/perl -Tw
# bubble sort
# Very simplistic and inefficient sorting algorithm
# Start with the first two elements, compare them. If the first is greater
# than the second, swap them. Continue henceforth for all pairs in the
# array.
# After that, perform another pass and do the same thing. Continue until
# there is a complete pass without any swaps.
#
# --- BLURB FROM WIKIPEDIA ---
# Bubble sort is a straightforward and simplistic method of sorting data
# that is used in computer science education. The algorithm starts at the
# beginning of the data set. It compares the first two elements, and if the
# first is greater than the second, it swaps them. It continues doing this
# for each pair of adjacent elements to the end of the data set. It then
# starts again with the first two elements, repeating until no swaps have
# occurred on the last pass. While simple, this algorithm is highly
# inefficient and is rarely used except in education. A slightly better
# variant, cocktail sort, works by inverting the ordering criteria and the
# pass direction on alternating passes. Its average case and worst case are
# both O(n^2).
# --- BLURB FROM WIKIPEDIA ENDS ---

use strict;
$|++; # force auto flush of output buffer

sub bubble_sort {
    my $arr = $_[0]; # array to sort
    my $no_swaps = undef;
    my $swap_count = 0;

    while (1) {
        if ($no_swaps) {
            $no_swaps = undef;
        }

        my @arr_dref = @$arr;

        for (my $i=0 ; $i<$#arr_dref ; $i++) {
            if ($arr->[$i] > $arr->[$i+1]) {
                $swap_count++;
                $no_swaps = 1;
                my $tmp = $arr->[$i];
                $arr->[$i] = $arr->[$i+1];
                $arr->[$i+1] = $tmp;
            }
        }
        
        if (not $no_swaps) {
            print "$swap_count\n";
            return;
        }
        
    }
}

my @arr = ();
my $max = 100;
while ($max > 0) {
    push @arr, $max;
    $max--;
}

bubble_sort(\@arr);
print "@arr\n";

