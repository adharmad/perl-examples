# more sorting
# this is not working for some reason

my %pineapp = {
    Amol => 12,
    Bageshree => 20,
    Kashmira => 5,
    Vishal => 33,
    Madhura => 21
};

sub ask_monkey {
    return $pineapp{$_};
}

my @castaways = qw(Amol Vishal Bageshree Kashmira Madhura);

my @wasters = sort {
    ask_monkey($b) <=> ask_monkey($a)
} @castaways;

print "@wasters\n";


