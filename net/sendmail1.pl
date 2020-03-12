#!/usr/bin/perl -w 

use strict; 


my $sendmail = "/usr/sbin/sendmail -t"; 

my $reply_to = "Reply-to: foo\@bar.org\n"; 
my $subject = "Subject: Confirmation of your submission XXX\n"; 
my $content = "Thanks for your submission."; 
my $to = "amol.dharmadhikari\@oracle.com";


my $send_to = "To: Amol Dharmadhikari";
open(SENDMAIL, "|$sendmail") or die "Cannot open $sendmail: $!"; 
print SENDMAIL $reply_to; 
print SENDMAIL $subject; 
print SENDMAIL $send_to; 
print SENDMAIL "Content-type: text/plain\n\n"; 
print SENDMAIL $content; 
close(SENDMAIL); 
print "Confirmation of your submission will be emailed to you.";
exit;
