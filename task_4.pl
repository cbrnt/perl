#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;
$, = ' ';

my @source_array = qw(10 20 30 40 50 60 70 80);
my @shuffled_array;

sub shuffle_array {
    my $in_array = shift || [];

    my $current_position = 0;
    my $current_value;

    for my $iter (@$in_array) {
        $current_value = $iter;
        my $new_position = int(rand(@$in_array));
        $in_array->[$current_position] = $in_array->[$new_position];
        $in_array->[$new_position] = $current_value;
        $current_position += 1;
    }
    return $in_array;
}

sub print_array_sorted {
    # Выводит массив с сортировкой
    my $text = shift;
    my $array = shift || [];
    print $text . ":" .  "\n";
    print sort {$a <=> $b} @$array;
    print "\n";
}

print_array_sorted("Source array", \@source_array);

@shuffled_array = @{shuffle_array(\@source_array)};
print @shuffled_array;

