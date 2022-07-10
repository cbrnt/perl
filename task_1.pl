#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

$, = ' ';

my @array = qw(10 200 1 0 10);

my %hash = map {$_ => 1} @array;
my @uniq = keys %hash;

print sort {$a <=> $b} @uniq;
