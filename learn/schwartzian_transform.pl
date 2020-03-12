# schwartzian transform

my $str = qq^
eir      11   9   2    6    3    1     1  81%  63%    13
oos      10   6   4    3    3    0     4  60%  70%    25
hrh      10   6   4    5    1    2     2  60%  70%    15
spp      10   6   4    3    3    1     3  60%  60%    14
^;

#print "$str\n";

# split the string into lines
my @lines = split /\n/, $str;
# print "@lines\n";

# for each line in the @lines array return an anonymous array reference
# The first element of the array reference in the original line and the
# second is the last element (which we want to sort by)
my @annotated_lines = map {
    [ ($_, (split)[-1]) ]
} @lines;

# print "@annotated_lines\n";

# now sort using the second element, which is the last element
my @sorted_lines = sort { $a->[1] <=> $b->[1] } @annotated_lines;

# print "@sorted_lines\n";

# restore the sorted array by getting the first element
my @clean_lines = map { $_->[0] } @sorted_lines;
#print "@clean_lines\n";

# join the sorted lines
my $result = join "\n", @clean_lines;
# print "$result\n";

# This entire process can be combined in a single line
my $str1 =
    join "\n",                      # join elements to get string
    map { $_->[0] }                 # regenerate sorted array
    sort { $a->[1] <=> $b->[1] }    # sort on second element
    map { [$_, (split)[-1]] }       # create array ref 
    split /\n/,                     # split the string on newlines
    $str;


print "$str1\n";
