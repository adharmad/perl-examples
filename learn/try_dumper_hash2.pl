#!/usr/bin/perl
# try hashes with dumper module

use Data::Dumper;

my %foo_hash1 = (
                one => 1,
                two => 2,
                three => 3,
                four => 4,
                five => 5,
                );

my %foo_hash2 = (
                 kasmhira => 100,
                 amol => 13,
                 madhura => 22,
                 vishal => 666,
                );


my %foo = (
           haha => \%foo_hash1,
           baba => \%foo_hash2,
           );

print Dumper(\%foo);
