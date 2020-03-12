use strict;

my @arr = qw(amol madhura bageshree vishal mehta);
print "@arr\n";

my $var1 = pop @arr;
print "@arr\n";
print "$var1\n";

push @arr, "test1";
print "@arr\n";

my $var2 = shift @arr;
print "@arr\n";
print "$var2\n";

unshift @arr, "element";
print "@arr\n";



exit;
