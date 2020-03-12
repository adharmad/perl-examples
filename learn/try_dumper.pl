#!c:/perl/bin/perl 
# try the dumper library
# use with dumper_data.txt

use strict;
use Data::Dumper;

my %total_bytes;
while (<>) {
  my ($source, $destination, $bytes) = split;
  $total_bytes{$source}{$destination} += $bytes;
}

print Dumper(\%total_bytes);
