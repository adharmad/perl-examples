# Get the Java specialist's newsletter and email it to some address
use LWP::UserAgent;
use Net::SMTP;

# connect to an SMTP server
$smtp = Net::SMTP->new('stmail.oracle.com');
$smtp->mail( 'amol.dharmadhikari@oracle.com' ); # use the sender's address here
$smtp->to('amol@dharmadhikari.org');            # recipient's address
$smtp->data();                                  # Start the mail

my $browser = LWP::UserAgent->new( );
$browser->proxy(['http', 'ftp'], 'http://www-proxy.us.oracle.com:80');

my $pad_len = 3;

for (my $i=1 ; $i<155 ; $i++) {
    my $padded = sprintf("%0${pad_len}d", $i);
    my $url = 'http://www.javaspecialists.eu/archive/Issue' . $padded . '.html';
    print "processing $url\n";
    my $response = $browser->get($url);
    my $content = $response->content;

    # Send the header.
    $smtp->datasend("To: Amol Dharmadhikari <amol\@dharmadhikari.org>\n");
    $smtp->datasend("From: Amol Dharmadhikari <amol.dharmadhikari\@oracle.com>\n");
    $smtp->datasend("\n");

    # Send the body.
    $smtp->datasend($content);
    $smtp->dataend();               # Finish sending the mail

}
$smtp->quit;                        # Close the SMTP connection


