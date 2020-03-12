#!/usr/bin/perl -Tw
# selection sort
# Find smallest element and put it in the first position
# then find the next smallest and put it in the second position
# and so on until you reach the end of the list.
#
# --- BLURB FROM WIKIPEDIA ---
# Selection sort is a simple sorting algorithm that improves on the
# performance of bubble sort. It works by first finding the smallest element
# using a linear scan and swapping it into the first position in the list,
# then finding the second smallest element by scanning the remaining
# elements, and so on. Selection sort is unique compared to almost any other
# algorithm in that its running time is not affected by the prior ordering
# of the list: it performs the same number of operations because of its
# simple structure. Selection sort requires (n - 1) swaps and hence .(n)
# memory writes. However, Selection sort requires (n - 1) + (n - 2) + ... +
# 2 + 1 = n(n - 1) / 2 = .(n2) comparisons. Thus it can be very attractive
# if writes are the most expensive operation, but otherwise selection sort
# will usually be outperformed by insertion sort or the more complicated
# algorithms.
# --- BLURB FROM WIKIPEDIA ENDS ---

use strict;
$|++; # force auto flush of output buffer

sub selection_sort {
    my $arr = $_[0]; # array to sort

    my @arr_dref = @$arr;

    for (my $i=0 ; $i<$#arr_dref ; $i++) {
        my $pos = $i;
        for (my $j=$i+1 ; $j<=$#arr_dref ; $j++) {
            if ($arr->[$pos] > $arr->[$j]) {
                $pos = $j;
            }
        }

        # swap
        my $tmp = $arr->[$i];
        $arr->[$i] = $arr->[$pos];
        $arr->[$pos] = $tmp;
    }
}

my @arr = ();
my $max = 100;
while ($max > 0) {
    push @arr, $max;
    $max--;
}

selection_sort(\@arr);
print "@arr\n";

