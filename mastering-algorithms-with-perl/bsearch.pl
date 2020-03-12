#!/usr/bin/perl -w
# 
# bsearch - search for a word in a list of alphabetically ordered words
# Usage: bsearch word filename

$word = shift;                  # Assign first argument to $word
chomp(@array = <>);             # Read in newline-delimited words,
                                # truncating the newlines

($word, @array) = map lc, ($word, @array); # Convert all to lowercase
$index = binary_search(\@array, $word);

if (defined $index) {
    print "$word occurs at position $index\n";
} else {
    print "$word doesn't occur\n";
}

sub binary_search {
    my ($array, $word) = @_;
    my ($low, $high) = (0, @$array - 1);

    while ($low <= $high) {          # While the window is open
        my $try = int(($low + $high)/2); # Try the middle element
        print "Trying $array->[$try]\n";
        $low = $try + 1, next if $array->[$try] lt $word; # raise bottom
        $high = $try - 1, next if $array->[$try] gt $word; # lower top

        return $try;    # We've found the word!
    }
    return;                 # The word isn't there
}
        
