# tryoo3.pl
# object instances

{
    package Animal;

    sub speak {
        my $class = shift;
        print "A $class goes ", $class->sound, "!\n";
    }
}

{
    package Horse;
    @ISA = qw(Animal);
    sub sound {
        "neigh"
    }

    sub name {
        my $self = shift;
        $$self;
    }
}

my $name = "Mr. Ed";
my $tv_horse = \$name;  # a scalar reference

bless $tv_horse, "Horse";       # create the object instance

print $tv_horse->name, " says ", $tv_horse->sound, "\n";
