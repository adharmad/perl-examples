#!/usr/bin/perl

use Net::SMTP;

# connect to an SMTP server
$smtp = Net::SMTP->new('stmail.oracle.com');
$smtp->mail( 'amol.dharmadhikari@oracle.com' );     # use the sender's address here
$smtp->to('amol.dharmadhikari@oracle.com');        # recipient's address
$smtp->data();                      # Start the mail

# Send the header.
$smtp->datasend("To: Amol Dharmadhikari <amol\@dharmadhikari.org>\n");
$smtp->datasend("From: Amol Dharmadhikari <amol.dharmadhikari\@oracle.com>\n");
$smtp->datasend("\n");

# Send the body.
$smtp->datasend("Hello, World!\n");
$smtp->dataend();                   # Finish sending the mail
$smtp->quit;                        # Close the SMTP connection
