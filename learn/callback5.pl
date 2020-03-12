# callback5.pl
# return subroutine reference that counts

use File::Find;

sub callback_that_counts {
    my $count = 0;
    return sub {
        print ++$count, ": $File::Find::name\n";
    }
}

my $callback = callback_that_counts();
find ($callback, ".");
