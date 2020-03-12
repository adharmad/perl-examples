# Creates an index file for the file passed on command line
# The new file will contain all the words in the file and the line
# numbers they are on
# The old file will have everything with line numbers

use strict;

my $filename = shift;
my $line;
my @lines;

# open and read the file
open(SESAME, $filename);
@lines = <SESAME>;

foreach $line (@lines) {
    print "$line";
}

exit;
