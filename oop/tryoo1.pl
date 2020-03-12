# tryoo1.pl

{
    package Animal;

    sub speak {
        my $class = shift;
        print "A $class goes ", $class->sound, "!\n";
    }
}

{
    package Cow;
    @ISA = qw(Animal);
    sub sound {
        "mooo"
    }
}

{
    package Horse;
    @ISA = qw(Animal);
    sub sound {
        "neigh"
    }
}

{
    package Sheep;
    @ISA = qw(Animal);
    sub sound {
        "baaah"
    }
}

Cow->speak;
Horse->speak;
Sheep->speak;
