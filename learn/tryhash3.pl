#!/usr/bin/perl 
# hash having multiple values for a key

$arr = ("test1 : 1", "test2 : 2", "test3 : 3", "test3 : 4", "test3 : 5");

$h = &hash1($arr);

sub hash1() {
    my @vals = @_;
    my $elem;
    my $ldif_hash = ();

    foreach $elem (@vals) {
        my ($key, $val) = split ":", $elem;
        trim($key);
        trim($val);

        if (exists $ldif_hash{$key}) {
            $ldif_hash{$key} = join ",", $ldif_hash{$key}, $val;
        } else {
            $ldif_hash{$key} = $val;
        }
    }
    return \%ldif_hash;
}


sub trim_string() {
        my $string = shift;
        $string =~ s/^\s+//;
        $string =~ s/\s+$//;
        return $string;
}

