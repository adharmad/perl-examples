#!/usr/bin/perl -w
# grep function using an operator

my @input_numbers = (1, 2, 4, 8, 16, 32, 64, 128, 256);
my @odd_digit_sum = grep digit_sum_is_odd($_), @input_numbers;

print "@odd_digit_sum\n";

# same thing in short
my @odd_digit_sum1 = grep {
  my $input = $_;
  my @digits = split //, $input;
  my $sum;
  $sum += $_ for @digits;
  $sum % 2;
} @input_numbers;

print "@odd_digit_sum1\n";


# more compressed!
my @odd_digit_sum2 = grep {
  my $sum;
  $sum += $_ for split //;
  $sum % 2;
} @input_numbers;

print "@odd_digit_sum2\n";



  

sub digit_sum_is_odd {
  my $input = shift;
  my @digits = split //, $input; # assume only numeric characters
  my $sum;
  $sum += $_ for @digits;
  return $sum % 2;
}
