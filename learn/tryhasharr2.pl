# try arrays as hash elements

use strict;

my %hash1 = (
	     Amol => [],
	     Madhura => [],
	     Bags => []
);

my $tmpref;
my @keys;
my $key;
my @tmparr;

$tmpref = $hash1{'Amol'};
print "$tmpref\n";
push @{$tmpref}, 'foo';
push @{$tmpref}, 'boo';
push @{$tmpref}, 'hoo';

$tmpref = $hash1{'Madhura'};
push @{$tmpref}, 'foo';
push @{$tmpref}, 'boo';
push @{$tmpref}, 'hoo';

$tmpref = $hash1{'Bags'};
push @{$tmpref}, 'foo';
push @{$tmpref}, 'boo';
push @{$tmpref}, 'hoo';

@keys = keys(%hash1);
foreach $key (@keys) {
    @tmparr = @{$hash1{$key}};
   print "$key => @tmparr\n";
}
