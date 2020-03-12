# callback4.pl
# count the file size

use File::Find;

my $count = 0;
find(
    sub {
        $count++ if -f;   
    },
    "."
);

print "count = $count\n";
