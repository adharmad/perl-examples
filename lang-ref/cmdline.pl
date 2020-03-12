# command line arguments

print "Printing command line arguments:\n";
foreach my $arg (@ARGV) {
    print $arg, "\n";
}

print "\n";
print "Another way of printing command line arguments:\n";
foreach (my $i=0 ; $i<=$#ARGV; $i++) {
    print "Argument $i: $ARGV[$i]\n";
}
