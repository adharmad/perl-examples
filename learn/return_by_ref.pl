use strict;

my $aref = &array_return_by_ref();
for (my $i=0 ; $i<@$aref ; $i++) {
    print "$aref->[$i]\n";
}

my $h = &hash_return_by_ref();
my @ka = qw(foo boo doo);
my $k;
foreach $k (@ka) {
    print "$k => $h->{$k}\n";
}
exit;

sub array_return_by_ref {
    my @a = qw(amol vishal mehta);
    return \@a;
}

sub hash_return_by_ref {
    my %h = (foo => "foo1", boo => "boo1", doo => "doo1");
    return \%h;
}
