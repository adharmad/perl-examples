# callbacks by using inline anonymous subroutine referenc3e
# functionally equivalent to callback1.pl

use File::Find;

my @starting_directories = qw(..);
find(
    sub {
        print "$File::Find::name found\n";
    }, 
    @starting_directories);
