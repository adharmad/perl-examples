#!/usr/bin/perl -w

use strict;

&main($ARGV[0]);
exit;

sub main {
        my ($num) = @_;
        my $num1 = int($num);
        my $fact = &factorial($num1);
        print "Factorial of $num is $fact\n";
}

sub factorial {
        my ($arg) = @_;
        if ($arg == 1) {
                return 1;
        } else {
                return $arg * &factorial($arg-1);
        }
}
