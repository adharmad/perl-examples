# callback with anonymous subroutine reference

use File::Find;

my @starting_directories = qw(.);
find (
    sub {
        print "$File::Find::name found\n";
    }, 
    @starting_directories);
