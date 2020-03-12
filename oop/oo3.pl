sub Cow::speak {
    my $class = shift;
    print "a $class goes mooo!\n";
}

sub Horse::speak {
    my $class = shift;
    print "a $class goes neigh!\n";
}

sub Sheep::speak {
    my $class = shift;
    print "a $class goes baah!\n";
}

my @pasture = qw(Cow Cow Horse Sheep Sheep);

foreach my $beast (@pasture) {
    $beast->speak;
}
