#!/usr/bin/env perl
use common::sense;

package Animal;

sub new
{
    my $class = shift;

    my $self = {
        _name => shift,
        _age => shift || 1,
        _lifes => shift || 1,
    };
    
    bless $self, $class;
    
    return $self;
    
};

sub name {
    my $self = shift;
    my $name = shift;
    $self->{_name} = $name;
    return $self->{_name};
};

sub age {
    my $self = shift;
    my $age = shift;
    $self->{_age} = $age;
    return $self->{_age};
};

# overload

1;