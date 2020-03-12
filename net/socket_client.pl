#!/usr/bin/perl -w

use strict;
use sigtrap;
use IO::Socket;

my $sock = new IO::Socket::INET (
                                PeerAddr => 'www.yahoo.com',
                                PeerPort => 80,
                                Proto => 'tcp',
                                Type => SOCK_STREAM
                        );

die "Couldn't create socket: $!\n" unless $sock;

my $answer;

while ($answer = <$sock>) {
        print "$answer";
}

close ($sock);
