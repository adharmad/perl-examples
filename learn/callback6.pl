# callback5.pl
# return subroutine reference that counts and returns the count

use File::Find;

sub callback_that_counts {
    my $count = 0;
    return sub {
        if (@_) {
            return $count;
        } else {
            ++$count;
        }
    }
}

my $callback = callback_that_counts();
find ($callback, ".");

my $count = $callback->("dummy"); # dummy variable to get count
print "count = $count\n";
