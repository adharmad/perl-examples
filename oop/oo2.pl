sub Cow::speak {
    print "a cow goes mooo!\n";
}

sub Horse::speak {
    print "a horse goes neigh!\n";
}

sub Sheep::speak {
    print "a sheep goes baah!\n";
}

my @pasture = qw(Cow Cow Horse Sheep Sheep);

foreach my $beast (@pasture) {
    #&{$beast . "::speak"};
    $beast->speak;
}
