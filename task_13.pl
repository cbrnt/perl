#!/usr/bin/env perl
use common::sense;

my $line;
my $sum;
while (defined($line = <STDIN>) and !($line =~ 'done' )) {
    $sum += $line;
}

print "Your summarized value: " . $sum . "\n";