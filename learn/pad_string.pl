# left pad a string with zeros

my $pad_len = 3;

for (my $i=0 ; $i<100 ; $i++) {
    my $padded = sprintf("%0${pad_len}d", $i);
    print "$padded\n";
}
