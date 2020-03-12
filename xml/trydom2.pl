# for writing xml files using DOM
# reads text data from sample.dat

use strict;
use XML::DOM;

open (SAMPLE, "sample.dat");

# print the data file
#while (<SAMPLE>) {
#    print;
#}

my $doc = XML::DOM::Document->new();
my $xml_pi = $doc->createXMLDecl("1.0");
my $root = $doc->createElement("root");

foreach (<SAMPLE>) {
    my @data = split / /, $_;
    my $id = @data[0];
    my $fname = @data[1];
    my $lname = chomp (@data[2]);

    my $elem = $doc->createElement("row");
    my $id_elem = $doc->createElement("id");
    my $fname_elem = $doc->createElement("fname");
    my $lname_elem = $doc->createElement("lname");

    my $id_text = $doc->createTextNode($id);
    my $fname_text = $doc->createTextNode($fname);
    my $lname_text = $doc->createTextNode($lname);

    $id_elem->appendChild($id_text);
    $fname_elem->appendChild($fname_text);
    $lname_elem->appendChild($lname_text);

    $elem->appendChild($id_elem);
    $elem->appendChild($fname_elem);
    $elem->appendChild($lname_elem);

    $root->appendChild($elem);
}

print $xml_pi->toString;
print $root->toString;

print "\n";
