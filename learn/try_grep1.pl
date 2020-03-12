#!/usr/bin/perl -w
# try the grep function

my @input_numbers = (1, 2, 4, 8, 16, 32, 64);
my @bigger_than_10 = grep $_ > 10, @input_numbers;

print "@bigger_than_10\n";

my @end_in_4 = grep /4$/, @input_numbers;
print "@end_in_4\n";
