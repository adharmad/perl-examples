use strict;

# anonymous subroutine that adds 3 to its argument;
my $anon_sub =
  sub {
    return $_ + 3;
  };

my $a = 10;

my $a1 = &$anon_sub ($a);

print "$a1\n";

# More anonymous subroutines
sub test1 {
  my $arg = shift;
  print "$arg";
  return \&test2;
}

sub test2 {
  my $arg = shift;
  print " and $arg\n";
}

my $testsub = \&test1;
$testsub->("Batman")->("Robin");
