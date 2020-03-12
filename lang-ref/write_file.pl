#!/usr/bin/perl -w
# write a file taking inputs from stdin

use strict;

my $filename = $ARGV[0];
open(SESAME, ">$filename");
my $count = 1;
my $line;

while ($line = <STDIN>) {
        chomp $line;
        if ($line eq "end") {
                last;
        }
        print SESAME "$count: $line\n";
        $count++;
}

close(SESAME);
exit;
