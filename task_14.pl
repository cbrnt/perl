#!/usr/bin/env perl
use common::sense;
use lib qw(lib);
use Animal::Cat;

sub print_object {
    my $self = shift;
    print "Name: " . $self->{_name} . "\n";
    print "====\n";
    print "Lifes: " . $self->{_lifes} . "\n";
    print "Age: " . $self->{_age} . "\n";
    print "Animal class: " . $self->{_animal_class} . "\n";
    print "====\n";
};

my $cat_tom = new Animal::Cat("Tom", 4);
print_object($cat_tom);

my $cat_john = new Animal::Cat("John", 6);
print_object($cat_john);

my $merged_cat = $cat_tom + $cat_john;
print_object($merged_cat);

print_object($cat_tom);

# $cat_tom->name("Murzik");
# $cat_tom->age("111");
# $cat_tom->lifes("1");
# print_object($cat_tom);