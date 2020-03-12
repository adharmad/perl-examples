# try array

my @arr = (1, 2, 3, 4);

print "@arr\n";

for (my $i=0 ; $i<=$#arr ; $i++) {
    $arr[$i] *= 10;
}

print "@arr\n";

for (my $i=0 ; $i<=$#arr ; $i++) {
    print "$arr[$i]\n";
}
