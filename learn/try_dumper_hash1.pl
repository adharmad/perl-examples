#!/usr/bin/perl
# try hashes with dumper module

use Data::Dumper;

my %foo_hash = (
                one => 1,
                two => 2,
                three => 3,
                four => 4,
                five => 5,
                );


print Dumper(\%foo_hash);
