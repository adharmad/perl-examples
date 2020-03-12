# callback3.pl
# count size of files

use File::Find;

my $total_size = 0;
find(
    sub {
        $total_size += -s if -f;   
    },
    "."
);

print "total_size = $total_size\n";
