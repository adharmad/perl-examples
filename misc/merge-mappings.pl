#!/usr/bin/perl -w
# merge Jatan's and my mapping CSVs

use strict;

open(MAP1, "mappings-jatan.csv");
open(MAP, "mappings.csv");

my %jatan_mappings = ();
my %mappings = ();

while (<MAP1>) {
    $_ =~ s/^\s+//; #remove leading spaces
    $_ =~ s/\s+$//; #remove trailing spaces    
    my @tokens = split(/,/);
    if (!defined $tokens[1]) {
        $tokens[1] = "";
    }
    $jatan_mappings{$tokens[0]} = $tokens[1];

    #print "$tokens[0] -- $tokens[1]\n";
}

while (<MAP>) {
    $_ =~ s/^\s+//; #remove leading spaces
    $_ =~ s/\s+$//; #remove trailing spaces    
    my @tokens = split(/,/);
    if (!defined $tokens[1]) {
        $tokens[1] = "";
    }
    $mappings{$tokens[0]} = $tokens[1];
}

for my $key1 (keys %jatan_mappings) {
    $mappings{$key1} = $jatan_mappings{$key1};
}

open (NEWMAP, ">mappings-merged.csv");

for my $key1 (sort keys %mappings) {
    print NEWMAP "$key1, $mappings{$key1}\n";
}

close(NEWMAP);

close(MAP1);
close(MAP);
