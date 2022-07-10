#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

my $not_formatted_value = "12345678.09";
$not_formatted_value =~ /(\d{2})(\d{3})(\d{3})(\..*$)/;
my $formatted_value = $1 . "'" . $2 . "'" . $3 . $4;
print "Formatted value: " . $formatted_value;

# 12'345'678.09

