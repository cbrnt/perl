#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;
$, = ' ';

my @array_1 = qw(10 200 1 0 10 10 0 200);
my @array_2 = qw(10000 500 2 10 10000);
my @array_joined = ();

sub unique {
    my %seen;
    grep !$seen{$_}++, @_;
    return keys %seen;
}

sub print_array {
    my $text = shift;
    my $array = shift;
    print $text . ":" .  "\n";
    print sort {$a <=> $b} @$array;
    print "\n";
    return undef;
}


push @array_joined, @array_1, @array_2;
print_array("Array 1", \@array_1);
print_array("Array 2", \@array_2);
print_array("Joined array", \@array_joined);
my @uniq_array = unique(@array_joined);
print_array("Unique joined array", \@uniq_array);

