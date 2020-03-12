#!/usr/bin/perl

use strict;

open(PASSWD, 'users1.txt');

while (<PASSWD>) {
    chomp;
    my @tokens = split(/--/);
    my $name = $tokens[1];
    $name =~ s/^\s+//; #remove leading spaces
    $name =~ s/\s+$//; #remove trailing spaces
    my @names = split (/ /, $name);
    my $email = join (".", @names) . "\@oracle.com";
    print "$email\n";
}
