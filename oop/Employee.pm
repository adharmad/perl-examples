# Employee class

package Employee;

use strict;
use Person;

our @ISA = qw(Person);

# constructor
sub new {
    my ($class) = @_;
    # call super class constructor
    my $self = $class->SUPER::new();
    $self->{_id} = undef;
    $self->{_title} = undef;

    bless $self, $class;
    return $self;
}

# accessor for id
sub id {
    my ($self, $id) = @_;
    $self->{_id} = $id if defined ($id);
    return $self->{_id};
}

# accessor for title
sub title {
    my ($self, $title) = @_;
    $self->{_title} = $title if defined ($title);
    return $self->{_title};
}

# print method
sub print {
    my ($self) = @_;

    # call super class print method and address print method
    $self->SUPER::print;
    $self->address->print;

    # print my parameters now
    printf ("ID: %s, Title: %s\n", $self->id, $self->title);
}

