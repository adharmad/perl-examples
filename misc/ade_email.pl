#!/usr/bin/perl -w
use strict;
use MIME::Lite;

# send email for ADE migration

open(EMAILS, 'emails.txt');

while (<EMAILS>) {

    print "Processing $_\n";

    # create a new MIME Lite based email
    my $msg = MIME::Lite->new
    (
        Subject => "Have you checked into OIM CVS? -- Please Read",
        From    => 'Amol Dharmadhikari <amol.dharmadhikari@oracle.com>',
        To      => $_,
        Type    => 'text/html',
        Data    => 'Hi All,<br><br>Apologies for the automated email.<br>
            If you have checked anything into OIM CVS, please reply to this
            email and send me your ADE Login (Global UID).<br>
            This is required for the CVS -> ADE migration.<br><br>
            Thanks,<br>
            Amol Dharmadhikari<br>'
    );

    $msg->send('smtp', 'stmail.oracle.com');
}

