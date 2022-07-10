#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;


my $sizes = [qw/104 4096 52583 824823094 856444 82482309489494/];
my $postfix = [qw/B KB MB GB TB/];

sub set_bytes_prefix {
    my $size = shift;
    my $count = 0;
    my $rounded;
    while ($size / 1024 > 1) {
        $size /= 1024;
        $count += 1;
    }
    return $size, $postfix->[$count];
}

sub round_bytes {
    my $not_rounded_bytes = shift;
   return int($not_rounded_bytes + 0.5);

}

for (@$sizes) {
    my @prefixed_bytes = (set_bytes_prefix($_));
    print round_bytes($prefixed_bytes[0]) . " " . $prefixed_bytes[1] . "\n";
}
