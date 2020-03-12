use strict;

my @a = &array_return_by_value();
print "@a\n";

my %h = &hash_return_by_value();
my @k = keys %h;
my @v = values %h;
print "@k\n";
print "@v\n";
exit;

sub array_return_by_value {
    my @a = qw(amol vishal mehta);
    return @a;
}

sub hash_return_by_value {
    my %h = (foo => "foo1", boo => "boo1", doo => "doo1");
    return %h;
}
