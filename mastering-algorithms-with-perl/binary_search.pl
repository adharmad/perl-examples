#!/usr/bin/perl -w

#use strict;

@array = ("john", "sam", "zack", "peter", "paul", "steve", "vladimir");
$word = "peter";

$index = &binary_search(\@array, $word);
print "$index\n";
exit;

# $index = binary_search(\@array, $word)
#   @array is a list of lowercase strings in alphabetical order
#   $word is the target word that might be in the list
#   binary_search() returns the array index such that $array[$index] is 
#   $word

sub binary_search {
    my ($array, $word) = @_;
    my ($low, $high) = (0, @$array - 1);

    while ($low <= $high) {              # While the window is open
        my $try = int(($low + $high)/2); # Try the middle element
        $low = $try + 1, next if $array->[$try] lt $word; # raise bottom
        $high = $try - 1, next if $array->[$try] gt $word; # lower top

        return $try;    # We've found the word!
    }
    return -1;          # The word isn't there
}
