#!/usr/bin/env perl
use common::sense;

my $not_formatted_value = "12345678.09";
$not_formatted_value =~ /(^\d+)\.(\d+)/;
my $before_dot = $1;
my $after_dot = $2;

my $reversed_number = reverse $before_dot;
my @unpacked_number = unpack("(A3)*", $reversed_number);
print $_ . "\n" for @unpacked_number;
my $joined_string = join "'", @unpacked_number;
my $reversed_joined = reverse $joined_string;  
print "Formatted value: " . $reversed_joined . "\." . $after_dot . "\n";
