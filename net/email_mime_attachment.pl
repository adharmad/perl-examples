#!/usr/bin/perl -w
use strict;
use MIME::Lite;

# SendTo email id
#my $email = 'Ashok Maram <ashokmaram@gmail.com>';
my $email = 'amol.dharmadhikari@oracle.com';

my $file1 = '/home/adharmad/In_Da_Club.mp3';
my $file2 = '/home/adharmad/PIMP.mp3';
my $file3 = '/home/adharmad/Candy_Shop.mp3';

# create a new MIME Lite based email
my $msg = MIME::Lite->new
(
    Subject => "50 cent mp3",
    From    => 'amol.dharmadhikari@oracle.com',
    To      => $email,
    Type =>'multipart/alternative',
    Data    => 'Ashok<br>
        Attached are some 50 cent mp3s.<br>
        Amol'
);

# add the attachment
$msg->attach(
    Type => "audio/mpeg",
    Path => $file1,
    Encoding => 'base64',
    Filename => 'In_Da_Club.mp3',
    Disposition => "attachment"
);

$msg->attach(
    Type => "audio/mpeg",
    Path => $file2,
    Encoding => 'base64',
    Filename => 'PIMP.mp3',
    Disposition => "attachment"
);

$msg->attach(
    Type => "audio/mpeg",
    Path => $file3,
    Encoding => 'base64',
    Filename => 'Candy_Shop.mp3',
    Disposition => "attachment"
);

#MIME::Lite->send('smtp', 'stmail.oracle.com', Timeout => 60);
$msg->send;
