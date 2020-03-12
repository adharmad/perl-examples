# Calculate the gcd

use strict;
use Integer;

print "hello world\n";
$ans = &gcd(@ARGV);
print "GCD = $ans\n";
exit;

sub gcd {
        my ($n1, $n2) = @_;
        if ($n1 > $n2) {
                ($n1, $n2) = ($n2, $n1);
        }

        if ($n2%$n1 == 0) {
                return $n1;
        } else {
                return &gcd($n2%$n1, $n1);
        }
}



