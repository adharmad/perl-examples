use strict;

my @a = qw(amol vishal mehta);
&array_by_value(@a);

my %h = (foo => "foo1", boo => "boo1", doo => "doo1");
&hash_by_value(%h);
exit;

sub array_by_value {
    my @arr = @_;
    my $x;

    foreach $x (@arr) {
	print "$x\n";
    }
}

sub hash_by_value {
    my %h = @_;
    my @k = keys %h;
    my $kk;

    foreach $kk (@k) {
	my $v = $h{$kk};
	print "$kk => $v\n";
    } 
}
