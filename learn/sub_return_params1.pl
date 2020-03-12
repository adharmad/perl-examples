use strict;

my (@a) = &sub3();

print "arr1: @a[0]\n";
print "h1: @a[1]\n";

my $a1 = @a[0];
my $a2 = @a[1];

for (my $i=0 ; $i<@$a1 ; $i++) {
    print "$a1->[$i]\n";
}

my @ka = qw(foo boo doo);
my $k;

foreach $k (@ka) {
    print "$k => $a2->{$k}\n";
}

exit;

sub sub3 {
    my @arr1 = qw(amol bageshree madhura);
    my %h1 = (foo => "foo1", boo => "boo1", doo => "doo1",);

    return (\@arr1, \%h1);
}
