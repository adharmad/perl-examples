# All numbers (?) display the following property:
# 	Take any number
# 	If its even, half it.
# 	If its odd, triple it and add 1.
#   Continue this cycle. Sooner or later, it converges to 4, 2, 1.
# Question: Do all numbers display this property?
# What is the relation to the number and the number of steps it takes for
# the cycle to converge?
# Amol Dharmadhikari <adharma@cs.usfca.edu>
#

print "foo\n";

&cycle(10000);
exit;

sub cycle {
        print "boo\n";
	my $limit = @_[0];
        my $i = 0;
        my $x = 0;

        for ($i=1 ; $i<$limit; $i++) {
                print "$i --> ";
                $x = $i;
                $count = 2;

                while ($x != 4) {
                        $x = ($x%2)? ($x*3+1):($x/2);
                        $count++;
                        print "$x ";
                }

                print "2 1\n";
                print "$count\n";
        }
}



