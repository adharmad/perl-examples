# anonymous subroutines stored in an array

my %test = (
    Amol => sub {
        print "This is Amol\n";
    },
    Bageshree => sub {
        print "This is Bageshree\n";
    },
    Kashmira => sub {
        print "This is Kashmira\n";
    }    
);

for my $p (keys %test) {
    $test{$p}->();
}
