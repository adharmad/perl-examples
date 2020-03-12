{
    package Cow;

    sub sound { "mooo" }
    sub speak {
        my $class = shift;
        print "a $class goes ", $class->sound, "!\n";
    }
}

{
    package Horse;

    sub sound { "neigh" }
    sub speak {
        my $class = shift;
        print "a $class goes ", $class->sound, "!\n";
    }
}

Cow->speak;
Horse->speak;
