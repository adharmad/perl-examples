use strict;

# range operator ..
my $a = 100;
my $b = 110;
my @foo;
my @cap_alpha;
my @small_alpha;
my @digits;
my @combo;

for ($a .. $b) {
        print $_;
}
print "\n";

@foo = $a .. $b;
print "@foo\n";

@cap_alpha = ('A' .. 'Z');
@small_alpha = ('a' .. 'z');
@digits = ('0' .. '9');

print "@cap_alpha\n";
print "@small_alpha\n";
print "@digits\n";

@combo = ('aa' .. 'zz');
print "@combo\n";

# conditional operator
# TEST_EXPR ? IF_TRUE_EXPR : IF_FALSE_EXPR;
my $ok = 1;
my $c;
$c = $ok? $a : $b;
print "$c\n";



