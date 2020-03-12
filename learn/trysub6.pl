# try passing params to a subroutine

my @arr = qw (aa bb cc dd ee);

&foo (@arr);

sub foo {
    my $foo = shift;
    my @boo = @_;

    print "$foo\n";
    print "@boo\n";
}
