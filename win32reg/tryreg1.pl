#!/usr/bin/perl -w

use strict;
use Win32::Registry;

my $regstr = "HKEY_LOCAL_MACHINE\\SOFTWARE\\GNU\\Emacs";
my $hkey;
my $myhash;

my @regelems = split(/\\/, $regstr);

$HKEY_LOCAL_MACHINE->Open($regelems[1], $hkey) || die "$!\n";

my $i;
for ($i=2 ; $i<@regelems ; $i++) {
    $hkey->Open($regelems[$i], $hkey) || die "$!\n";
}
$hkey->GetValues($myhash) || die "$!\n";

my @keys = keys %$myhash;
my $key;

print "@keys\n";

foreach $key (@keys) {
        if ($key eq "Security") {
                next;
        }
        print "$key --> $myhash->{$key}[2]\n";
}

exit;
