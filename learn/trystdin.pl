use strict;

open (INFO, "-");
my $val = "";

while ($val = <INFO>) {
    print "This is what you typed: $val\n";
}
