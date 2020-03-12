# callback7.pl
# return two subroutine references, one that counts and 
# another that returns the count!

use File::Find;

sub callback_that_counts {
    my $count = 0;
    return (
        sub { ++$count; },
        sub { return $count; }
    );
}

my ($callback, $get_result) = callback_that_counts();
find ($callback, ".");

my $count = &$get_result(); 
print "count = $count\n";
