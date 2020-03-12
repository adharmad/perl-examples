use strict;

my %h = get_hash();
my $e;

foreach $e (keys %h) {
  print "$e => $h{$e}\n";
}

# populate a hash in a subroutine
sub get_hash {
  my %ht = (
            "abc" => "hello",
            "def" => "world",
            "ghi" => "goto",
            );

  return %ht;
}
