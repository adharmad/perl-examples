#!/usr/bin/perl -w
use strict;
use MIME::Lite;

# SendTo email id
my $email = 'amol.dharmadhikari@oracle.com';

# create a new MIME Lite based email
my $msg = MIME::Lite->new
(
    Subject => "HTML email test",
    From    => 'amol.dharmadhikari@oracle.com',
    To      => $email,
    Type    => 'text/html',
    Data    => '<H1>Hello</H1><br>This is a test email.
    Please visit our site <a href=”http://cyberciti.biz/”>online</a><hr>'
);

$msg->send('smtp', 'stmail.oracle.com');
