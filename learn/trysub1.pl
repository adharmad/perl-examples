use strict;

# subroutine to convert everything to uppercase

my $v1 = "amol";
my $v2 = "dharmadhikari";

my @p = upcase ($v1, $v2);

print "@p\n";
exit;

sub upcase {
        my @params = @_;
        for (@params) {
                tr/a-z/A-Z/
        }
        return @params;
}
