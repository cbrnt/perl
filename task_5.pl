#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

# возвращает время в ГГГГ-ММ-ДД чч:мм:сс
sub time_format {
    my $date = shift;
    my @date_parts =  split ' ', $date;
    my %date_dict = (
        "weekday"   => @date_parts[0],
        "month"     => @date_parts[1],
        "day"       => @date_parts[2],
        "time"      => @date_parts[3],
        "year"      => @date_parts[4],
    );
    my @time = split ':', $date_dict{'time'};
    my %time_dict = (
        "hours" => @time[0],
        "minutes" => @time[1],
        "seconds" => @time[2],
    );
    return("$date_dict{'year'}-$date_dict{'month'}-$date_dict{'day'} $time_dict{hours}:$time_dict{minutes}:$time_dict{seconds}");
}

my $now = localtime;
print time_format($now)

