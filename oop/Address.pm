# Address package

package Address;

use strict;

# constructor
sub new {
    my ($class) = @_;
    my $self = {
	_street => undef,
	_city => undef,
	_state => undef,
	_zip => undef
    };

    bless $self, 'Address';
    return $self;
}

# print method
sub print {
    my ($self) = @_;

    # print Address info
    printf ("Name: %s\n %s, %s %s\n", $self->street, $self->city, 
	    $self->state, $self->zip);
}

# accessor for street
sub street {
    my ($self, $street) = @_;
    $self->{_street} = $street if defined ($street);
    return $self->{_street};
}

# accessor for city
sub city {
    my ($self, $city) = @_;
    $self->{_city} = $city if defined ($city);
    return $self->{_city};
}

# accessor for state
sub state {
    my ($self, $state) = @_;
    $self->{_state} = $state if defined ($state);
    return $self->{_state};
}

# accessor for zip
sub zip {
    my ($self, $zip) = @_;
    $self->{_zip} = $zip if defined ($zip);
    return $self->{_zip};
}

1;
