my $url = 'http://slashdot.org';
# Just an example: the URL for the most recent /Fresh Air/ show

use LWP::Simple;
my $content = get $url;
die "Couldn't get $url" unless defined $content;

# Then go do things with $content, like this:

if($content =~ m/Microsoft/i) {
    print "They're talking about Microsoft on slashdot!\n";
} else {
    print "slashdot is apparently not talking about Microsoft today.\n";
}
