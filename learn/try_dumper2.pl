#!/usr/bin/perl
# yet another test for the data::dumper module

use Data::Dumper;

my @foo1 = qw(one two three four five);
my @foo2 = qw(amol vishal madhura kashmira bageshree);
my @foo3 = (\@foo1, \@foo2);
print Dumper(\@foo3);
