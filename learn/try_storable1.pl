#!/usr/bin/perl -w
# try the storable module
# store data in store1.db

use Storable;

my @array1 = qw(one hundred thirteen five twenty);
my @array2 = qw(kashmira amol);

push @array1, \@array2;

store \@array1, 'store1.db';



