# array data structure

my @arr = qw (cat dog monkey lion);

print "@arr\n";

# straight iteration
for (my $i=0 ; $i<=$#arr ; $i++) {
    print "$arr[$i]\n";
}

# one more way
for my $elem (@arr) {
    print "$elem\n";
}
