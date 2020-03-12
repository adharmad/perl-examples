# try arrays as hash elements

use strict;

my %hash1 = ();
my @lst1 = qw (apple mango orange);
my @lst2 = qw (beef pork tuna);
my @tmparr;
my @keys;
my $key;
my $arrref;

$hash1{'fruits'} = \@lst1;
$hash1{'meat'} = \@lst2;

@keys = keys(%hash1);
foreach $key (@keys) {
    @tmparr = @{$hash1{$key}};
   print "$key => @tmparr\n";
}

# add values to it
unless ($hash1{'drinks'}) {
    @tmparr = qw (beer whisky rum);
    $hash1{'drinks'} = \@tmparr;
}

# modify existing array reference
$arrref = $hash1{'fruits'};
push @{$arrref}, 'guava';
push @{$arrref}, 'banana';

$arrref = $hash1{'meet'};
push @{$arrref}, 'crab';

print "---\n";

@keys = keys(%hash1);
foreach $key (@keys) {
    @tmparr = @{$hash1{$key}};
   print "$key => @tmparr\n";
}
