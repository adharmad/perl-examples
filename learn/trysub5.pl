# another anonymous subroutine

# call them
# some problems..

sub1->("haha", "baba");
sub1->("dada", "gaga");
sub1->("mama", "kaka");

sub foo {
    my $arg = shift;
    print "This is my arg: $arg\n";
}

my $sub1 = sub {
    my ($arg1, $arg2) = @_;
    print "Inside sub1: $arg1\n";
    &foo($arg2);
};
