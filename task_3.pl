#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;
use Data::Dumper;
$, = ' ';

sub print_array {
    my $text = shift;
    my $array = shift;
    print $text . ":" .  "\n";
    print sort {$a <=> $b} @$array;
    print "\n";
    return undef;
}

# простой перебор
sub check_simple {
    my $checking_element = shift;
    my $checking_array = shift;
    for (@$checking_array) {
        if ($_ == $checking_element) {
            return 1;
        }
    }
    return 0;
}

my @array = qw(1 30 1000 100);
my @array_2 = qw(2 30 1000 1010 2);
my @array_3 = qw(2 30 1000 1010 2 4);
my $element_to_check = 4;

print "check_simple"."\n";
check_simple($element_to_check, \@array) ? print "Found"."\n" : print "Not found"."\n";

# grep
sub grep_array_element {
    my $grep_match = shift;
    my $grep_array = shift;
    if (my ($matched) = grep $_ eq $grep_match, @$grep_array) {
    return 1;
    }
}
print "grep_array"."\n";
grep_array_element($element_to_check, \@array_2) ? print "Found"."\n"  : print "Not found"."\n" ;

# hash
sub check_array_element_via_hash {
    my $hash_match = shift;
    my $hash_array = shift;
    my %hash = map {$_ => 1} @$hash_array;
    if (%hash{$hash_match}) {
    return 1;
    }
}
print "via_hash"."\n";
check_array_element_via_hash($element_to_check, \@array_3) ? print "Found"."\n"  : print "Not found"."\n" ;
