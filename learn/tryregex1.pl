use strict;

my @lines;
my $line;
my $s;

# match or/and using () and | operators
open (SESAME, "regex.txt");

@lines = (<SESAME>);

foreach $line(@lines) {
        if ($line =~ /(Amol|Madhura) Dharmadhikari/) {
                print "$line";
        }
}

print "\n";

# length quantifier
if ("moooo" =~ /moo{3}/) {
        print "moooo matched\n";
}

if ("moomoomoo" =~ /(moo){3}/) {
        print "moomoomoo matched\n";
}

