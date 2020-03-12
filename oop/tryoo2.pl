# tryoo2.pl
# same as tryoo1.pl but with method overriding

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

{
    package Mouse;
    @ISA = qw(Animal);
    # over-riding speak
    sub speak {
        my $class = shift;
        $class->SUPER::speak;
        print "[but you can barely hear it!]\n";
    }
    sub sound {
        "squeak"
    }
}


Cow->speak;
Horse->speak;
Sheep->speak;
Mouse->speak;
