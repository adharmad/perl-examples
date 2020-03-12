#!/usr/bin/perl -w
# Get the Java specialist's newsletter and email it to some address
# Use MIME::Lite package and send html emails
use LWP::UserAgent;
use Net::SMTP;
use MIME::Lite;
use strict;

MIME::Lite->send('smtp', 'stmail.oracle.com');

# whom to send the email to
my $email = 'Amol Dharmadhikari <amol@dharmadhikari.org>';

my $browser = LWP::UserAgent->new( );
$browser->proxy(['http', 'ftp'], 'http://www-proxy.us.oracle.com:80');

my $pad_len = 3;

for (my $i=1 ; $i<155 ; $i++) {
    my $padded = sprintf("%0${pad_len}d", $i);
    my $url = 'http://www.javaspecialists.eu/archive/Issue' . $padded . '.html';
    print "processing $url\n";
    my $response = $browser->get($url);
    my $content = $response->content;


    # create a new MIME Lite based email
    my $msg = MIME::Lite->new
    (
        Subject => "Java Specialists NewsLetter Issue " . $padded,
        From    => 'Amol Dharmadhikari <amol.dharmadhikari@oracle.com>',
        To      => $email,
        Type    => 'text/html',
        Data    => $content
    );

    $msg->send;
}
