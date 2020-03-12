#!/usr/bin/perl
# another test for the data::dumper module

use Data::Dumper;

my @foo_array = qw(one two three four five);
print Dumper(\@foo_array);
