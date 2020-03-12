use strict;

my (@a1, @a2) = &sub1();

print "a1: @a1\n";
print "a2: @a2\n";

my (@a3) = &sub2();

print "a1: @a3[0]\n";
print "a2: @a3[1]\n";

my $a4 = @a3[0];
my $a5 = @a3[1];

for (my $i=0 ; $i<@$a4 ; $i++) {
    print "$a4->[$i]\n";
}

for (my $i=0 ; $i<@$a5 ; $i++) {
    print "$a5->[$i]\n";
}

exit;

sub sub1 {
    my @arr1 = qw(amol bageshree madhura);
    my @arr2 = qw(hello world here);

    return (@arr1, @arr2);
}

sub sub2 {
    my @arr1 = qw(amol bageshree madhura);
    my @arr2 = qw(hello world here);

    return (\@arr1, \@arr2);
}
