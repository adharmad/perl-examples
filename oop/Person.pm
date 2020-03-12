# Person package

package Person;

use strict;
use Address;

# constructor
sub new {
    my ($class) = @_;
    my $self = {
	_firstName => undef,
	_lastName => undef,
	_ssn => undef,
	_address => undef
    };

    bless $self, $class;
    return $self;
}

# print method
sub print {
    my ($self) = @_;

    # print Person info
    printf ("Name: %s %s\n\n", $self->firstName, $self->lastName);
    $self->address->print;
}

# accessor for first name
sub firstName {
    my ($self, $firstName) = @_;
    $self->{_firstName} = $firstName if defined ($firstName);
    return $self->{_firstName};
}

# accessor for last name
sub lastName {
    my ($self, $lastName) = @_;
    $self->{_lastName} = $lastName if defined ($lastName);
    return $self->{_lastName};
}

# accessor for address
sub address {
    my ($self, $address) = @_;
    $self->{_address} = $address if defined ($address);
    return $self->{_address};
}

# accessor for ssn
sub ssn {
    my ($self, $ssn) = @_;
    $self->{_ssn} = $ssn if defined ($ssn);
    return $self->{_ssn};
}

1;
