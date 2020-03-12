use strict;

my $i = -1;

($i = &sub1()) || die ("timepass!");

print "$i\n";

sub sub1 {
    return 1;
}
