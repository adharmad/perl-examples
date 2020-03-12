# some regex operations

use strict;

my $filename = "tmp.htm";
open(SESAME, $filename);
my $count = 1;
my $line;
my $s;

#while ($line = <SESAME>) {
#        #print "$count: $line";
#        if ($line =~ /http:/) {
#               print $line;
#               $count++;
#        }
#}

#print "Number of matching lines = $count\n";

while ($line = <SESAME>) {
        #print "$count: $line";
        if ($line =~ /www./) {
               print $line;
               $count++;
        }
}

print "Number of matching lines = $count\n";


# try some other matching
$s = "spp:Fe+H20=Fe)2;H:2112:100:Stephen P Potter:/home/spp:/bin/tcsh";



exit;
