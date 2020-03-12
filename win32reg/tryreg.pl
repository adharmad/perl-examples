#!/usr/bin/perl -w

use strict;
use Win32::Registry;

my $hkey;
my $myhash;

$HKEY_LOCAL_MACHINE->Open('Software', $hkey) || die "$!\n";
$hkey->Open('Microsoft', $hkey) || die "$!\n";
$hkey->Open('Cryptography', $hkey) || die "$!\n";
$hkey->Open('Calais', $hkey) || die "$!\n";
$hkey->Open('SmartCards', $hkey) || die "$!\n";
$hkey->Open('Schlumberger Cryptoflex 4K', $hkey) || die "$!\n";
$hkey->GetValues($myhash) || die "$!\n";

#print "DisplayName: $myhash->{'DisplayName'}[2]\n";

my @keys = keys %$myhash;
my $key;

foreach $key (@keys) {
        if ($key eq "Security") {
                next;
        }
        print "$key --> $myhash->{$key}[2]\n";
}

exit;
