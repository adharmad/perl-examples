#!/usr/bin/perl -w

use strict;

&fibo(int($ARGV[0]));
exit;

sub fibo {
        my ($num) = @_;
        my $arg1 = 0;
        my $arg2 = 1;
        my $count = 0;

        print "$arg1\n";
        print "$arg2\n";

        while ($count < $num) {
                ($arg1, $arg2) = ($arg2, $arg1+$arg2);
                print "$arg2\n";
                $count++;
        }
}
