#!/usr/bin/perl

use Net::SMTP;

# connect to an SMTP server
$smtp = Net::SMTP->new('smtp.comcast.net');
$smtp->mail( 'apdharmadhikari@comcast.net' );     # use the sender's address here
$smtp->to('amolpd@gmail.com');        # recipient's address
$smtp->data();                      # Start the mail

# Send the header.
$smtp->datasend("To: amolpd@gmail.com\n");
$smtp->datasend("From: apdharmadhikari@comcast.net\n");
$smtp->datasend("\n");

# Send the body.
$smtp->datasend("Hello, World!\n");
$smtp->dataend();                   # Finish sending the mail
$smtp->quit;                        # Close the SMTP connection


