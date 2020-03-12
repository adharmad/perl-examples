# Calculate the gcd

use integer;

&gcd(@ARGV);
exit;

sub gcd {
        my ($n1, $n2) = @_;
        if ($n1 > $n2) {
                ($n1, $n2) = ($n2, $n1);
        }

        while ($n2%$n1) {
                ($n1, $n2) = ($n2%$n1, $n1);
        }

        print "GCD = $n1\n";
}



