# testing package functionality

package MyPackage;

# globals
my @lst = ();

sub print_lst {
    for my $elem (@lst) {
        print "$elem\n";
    }
}

sub add_to_lst {
    my $elem = shift;
    push @lst, $elem;
}

1;
