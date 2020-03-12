#!/usr/bin/perl

open(KEYS, ">keys.txt");

for (my $i=4 ; $i<150005 ; $i++) {
    print KEYS "$i\n";
}

close(KEYS);
