package Bug;

sub new {
        my $class=$_[0];
        my $objref = {
                      _id => $_[1],
                      _type => $_[2],
                      _descr => $_[3],
        };
        bless $objref, $class;
        return $objref;
}

sub get_id {
        $_[0]->{_id};
}

sub get_type {
        $_[0]->{_type};
}

sub get_descr {
        $_[0]->{_descr};
}

sub print_me {
        my ($self, @args) = @_;
        print "Simply printing from print_me() function\n";
}

sub print_object {
        my ($self, @args) = @_;
        print "Printing self\n";
        print "ID = $self->{_id}\n";
        print "Type = $self->{_type}\n";
        print "Description = $self->{_descr}\n";
}

1;
