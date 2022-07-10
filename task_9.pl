#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

my %endings = (
    'новост' => {
        "1" => "ь",
        "2" => "и",
        "3" => "ей",
    }
);

sub news_declension {
    my $quantity = shift;
    ($quantity >= 2 && $quantity < 5) ? return ("новост" . %endings{"новост"}->{"2"}) : ($quantity !=1 && $quantity >=5) ? return ("новост" . %endings{"новост"}->{"3"}) : return ("новост" . %endings{"новост"}->{"1"});
};

print news_declension(10) . "\n";