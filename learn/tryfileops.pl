# some file operations

use strict;

my $filename = "foo.txt";

if (-e $filename) {
        print "File $filename exists\n";
} else {
        print "File $filename does not exist\n";
}

if (-d "tryfile.pl") {
        print "File tryfile.pl is a directory\n";
} else {
        print "File tryfile.pl is not a directory\n";
}

if (-T "tryfile.pl") {
        print "File tryfile.pl is a text file\n";
} else {
        print "File tryfile.pl is not a text file\n";
}
