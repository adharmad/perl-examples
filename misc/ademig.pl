#!/usr/bin/perl
# script to get user logins and names from /etc/passwd of oimcvs

use strict;

open(PASSWD, 'passwd');

while (<PASSWD>) {
    my @tokens = split(/:/);
    print "$tokens[0] -- $tokens[4]\n";
    #print "$tokens[0]\n";
}
