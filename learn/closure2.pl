# return subroutine from subroutine

use File::Find;

sub create_callback {
    my $count = 0;
    return sub {
        print ++$count, " : $File::Find::name\n";
    }
}

my $callback = create_callback();
find ($callback, ".");
