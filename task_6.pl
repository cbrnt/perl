#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

my @symbols = ('A' .. 'Z', 'a' .. 'z', 0 .. 9);

sub generate_random_string {
    my $range = shift;
    my $symbols = shift;

    my $random_string;
    for (0..$range) { $random_string .= $symbols[int(rand($#symbols))] };
    return $random_string;
}

print generate_random_string(10, @symbols)."\n";
