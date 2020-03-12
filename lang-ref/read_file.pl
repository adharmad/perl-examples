#!/usr/bin/perl -w
# read a file whose name is passed via the command line

use strict;

my $filename = $ARGV[0];
open(SESAME, $filename);
my $count = 1;
my $line;

while ($line = <SESAME>) {
        print "$count: $line";
        $count++;
}

print "Number of lines = $count\n";
exit;
