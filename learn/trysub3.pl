use strict;

my @mylst = pop_list();
my $e;

print "@mylst\n";

foreach $e (@mylst) {
  print "$e\n";
}

# populate a list in a subroutine and return
sub pop_list {
  my @lst = ();

  $lst[0] = "abc";
  $lst[1] = "def";

  return @lst;
}
