# for reading xml files

use strict;
use XML::DOM;

my $file = "sample1.xml";
my $parser = XML::DOM::Parser->new();

my $doc=  $parser->parsefile($file);
my $elem;

my $root_node = $doc->getElementsByTagName("root")->item(0);
my @row_nodes = $root_node->getElementsByTagName("row");

foreach $elem (@row_nodes) {
    my $id = $elem->getElementsByTagName("id")->item(0)->getFirstChild->getNodeValue;
    my $fname = $elem->getElementsByTagName("fname")->item(0)->getFirstChild->getNodeValue;
    my $lname = $elem->getElementsByTagName("id")->item(0)->getFirstChild->getNodeValue;

    print "$id => $fname => $lname\n";
}
