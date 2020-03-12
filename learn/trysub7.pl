# call subroutine

my $x = &quot("aaa");
print "$x\n";

sub quot {
    my $str = shift;
    return "'" . $str . "'";
}
