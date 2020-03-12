# split function again

use Strict;

my $line = "merlyn::118:10:Randal:/home/merlyn:/usr/bin/perl";
my @fields = split (/:/ ,$line); # split $line, using : as delimiter
# now @fields is ("merlyn","","118","10","Randal",
#                 "/home/merlyn","/usr/bin/perl")

print "@fields\n";
