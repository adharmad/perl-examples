#!/usr/bin/perl -w
# Code by Nathan Torkington

use strict;
use integer;

my ($word, $file) = @ARGV;
open (FILE, $file) or die "Can't open $file: $!\n";
my $position = binary_search_file(\*FILE, $word);

if (defined $position) {
    print "$word occurs at position $position\n";
} else {
    print "$word does not occur in $file\n";
}

sub binary_search_file {
    my ($file, $word) = @_;
    my ($high, $low, $mid, $mid2, $line);
    $low = 0;                   # Start of line
    $high = (stat($file))[7];   # Might not be start of file
    $word =~ s/\W//g;           # remove punctuation
    $word = lc($word);          # convert to lower case

    while ($high != $low) {
        $mid = ($high+$low)/2;
        seek($file, $mid, 0) || die "Coultn't seek: $!\n";

        # $mid is probably in the middle of a line, so read the rest
        # and set $mid2 to that new position
        $line = <$file>;
        $mid2 = tell($file);

        if ($mid2 < $high) {    # We're not near file end so read on
            $mid = $mid2;
            $mid2 = <$file>;
        } else {    # Linear search since last line
            seek ($file, $low, 0) || die "Couldn't seek: $!\n";
            while (defined ($line = <$file>)) {
                last if compare($line, $word) >= 0;
                $low = tell($file);
            } 
            last;
        }

        if (compare($line, $word) < 0) {
            $low = $high;
        } else {
            $low = $mid;
        }
    }

    return if compare($line, $word);
    return $low;
}

sub compare { # $word1 needs to be lowercased, $word2 doesn't
    my ($word1, $word2) = @_;
    $word1 =~ s/\W//g;
    $word1 = lc($word1);
    return $word1 cmp $word2;
}
