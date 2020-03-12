use strict;

my @a = qw(amol vishal mehta);
&array_by_ref(\@a);
print "after modifying array:\n";
print "@a\n";

my %h = (foo => "foo1", boo => "boo1", doo => "doo1");
&hash_by_ref(\%h);
print "after modifying hash:\n";
my @v = values %h;
print "@v\n";
exit;

sub array_by_ref {
    my $arr = @_[0];

    # print the array by reference
    for (my $i=0 ; $i<@$arr ; $i++) {
	print "$arr->[$i]\n";
    }

    # modify the array
    $arr->[0] = "madhura";
    $arr->[1] = "bageshree";
    $arr->[2] = "sujatha";
    $arr->[3] = "test";
}

sub hash_by_ref {
    my $h = @_[0];
    my @keylst = qw(foo boo doo);
    my $k;

    foreach $k (@keylst) {
	my $v = $h->{$k};
	print "$k => $v\n";
    } 

    $h->{"foo"} = "foo2";
    $h->{"boo"} = "boo2";
    $h->{"doo"} = "doo2";
}
