#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;
use Data::Dumper;

my %interfaces;
my @ifconfig_data = `ifconfig`;

# получаем имена интерфейсов
for (@ifconfig_data) {
     if (/^(\S+): /){
         $interfaces{$1} = undef;
     };
}

for my $key (keys %interfaces) {
    for my $index (0 .. @ifconfig_data) {
        @ifconfig_data[$index] =~ /^(\S+): /;
        if ($1 eq $key) {
            $index += 1;
            # чистим строку
            @ifconfig_data[$index] =~ s/\s{8}//g;
            @ifconfig_data[$index] =~ s/\s{2}/ /g;
            @ifconfig_data[$index] =~ s/\n//g;
            # ищем ip адрес, маску и адрес широкого вещания в сети
            @ifconfig_data[$index] =~ /^(inet )(\d+\.\d+\.\d+\.\d+)\s(netmask )(\d+\.\d+\.\d+\.\d+)\s(broadcast )(\d+\.\d+\.\d+\.\d+)/;
            if ($1) {
                my $inet = $2;
                my $netmask = $4;
                my $broadcast = $6;
                $interfaces{$key} = [$inet, $netmask, $broadcast];
            };

        }
    }

}

while ( (my $key_, my $value_) = each %interfaces ) {
   print "$key_ => " . Dumper($value_) . "\n";
}

