#!/usr/bin/perl
# try the map function

my @input_numbers = (1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024);
my @result = map $_ + 100, @input_numbers;

print "@result\n";

# map can return multiple elements for every element in the source list
my @more_results = map {$_+100, 3*$_} @input_numbers;

print "@more_results\n";

# cast results of map as hash
# this is not working
my %h = map {$_+100, 3*$_} @input_numbers;
print "$h\n";
