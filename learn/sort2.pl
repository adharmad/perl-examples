# sorting with indices

my @arr = qw (Gillian Skipper Professor Ginger Mary_Ann);

#my @sorted = sort @arr;
#print "@sorted\n";

# this is not working...why?
my $sorted_pos = sort { $arr[$a] cmp $arr[$b] } 0..$#arr;
print "@sorted_pos\n";
