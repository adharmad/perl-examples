# try arrays as hash elements

use strict;

my %hash1 = ();
my %hh1 = (
	   Amol => 1,
	   Bags => 2,
	   Madhura => 3
	   );

my %hh2 = (
	   Ambarnath => 11,
	   SFO => 22,
	   Bombay => 33
	   );
my $tmph;
my $key;
my @keys;

$hash1{'people'} = \%hh1;
$hash1{'places'} = \%hh2;

@keys = keys(%hash1);
foreach $key (@keys) {
    $tmph = $hash1{$key};
    print "$key => $tmph\n";
}

