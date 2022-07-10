#!/usr/bin/env perl
use common::sense;
use Animal;

package Animal::Cat;

our @ISA = qw(Animal);

sub new
{
    my $class = shift;

    my $self = {
        _name => shift,
        _age => shift || 1,
        _lifes => shift || 9,
        _animal_class => 'cat',
    };
    
    bless $self, $class;
    
    return $self;
    
};

sub lifes {
    my $self = shift;
    my $lifes = shift;
    $self->{_lifes} = $lifes;
    return $self->{_lifes};
};

sub merge {
    my $first_cat = shift;
    my $second_cat = shift;
    my $name = $first_cat->{_name} . $second_cat->{_name};
    my $age = $first_cat->{_age} + $second_cat->{_age};
    my $self = new Animal::Cat($name, $age);
    print "\$first_cat->{_lifes} = $first_cat->{_lifes}\n";
    $first_cat->lifes($first_cat->{_lifes} - 1);
    print "after minus 1: \$first_cat->{_lifes} = $first_cat->{_lifes}\n";
    return $self;
}

use overload
    '+' => \&merge;

1;