{
    package Animal;

    sub speak {
        my $class = shift;
        print "a $class goes ", $class->sound, "!\n";
    }
}

{
    package Cow;
    @ISA = qw(Animal);
    sub sound { "mooo" }
}


{
    package Horse;
    @ISA = qw(Animal);
    sub sound { "neigh" }
}

Cow->speak;
Horse->speak;
