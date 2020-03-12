#!/usr/bin/perl -w

# for some reason, map is not working as expected. need to investigate more.

use strict;

my @arr = qw (one two three four);
my $a;

print "arr = @arr\n";

#my @arr1 = map (&single_quote_string, @arr);

#print "arr1 = @arr1\n";

foreach $a (@arr) {
        $a = &single_quote_string($a);
        print "$a\n";
}

sub single_quote_string {
        my ($s) = $_[0];
        my $s1 = "'" . $s . "'";
        return $s1;
}

exit;
