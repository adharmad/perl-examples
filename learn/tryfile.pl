use strict;

my @lines;
my $line;

open (SESAME, "tryfile.pl");

@lines = (<SESAME>);

foreach $line(@lines) {
        print "$line";
}
