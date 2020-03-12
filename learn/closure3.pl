# total size with callback

use File::Find;

sub create_size_callback {
    my $total_size = 0;

    return sub {
        if (@_) { # for our dummy invocation
            return $total_size;
        } else {
            $total_size += -s if -f;
        }
    };
}

my $callback = create_size_callback();
find ($callback, "c:/svnwork");

# now we get the total size variable inside the subroutine, which is
# otherwise invisible 
my $total_size = $callback->("dummy");
print "total size = $total_size\n";
