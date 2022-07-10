#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

my $ip = "98.210.97.100";

sub check_ip {
    my $checking_ip = shift;
    $checking_ip =~ /(^\d+)\.(\d+)\.(\d+)\.(\d+)/;
    if ($1 > 255){
        return 0;
    }
    if ($2 > 255){
        return 0;
    }
    if ($3 > 255){
        return 0;
    }
    if ($4 > 255){
        return 0;
    }
    return 1;
}

print check_ip($ip) ? "Valid IP" : "Invalid IP";