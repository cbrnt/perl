#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

my $source_file = 'task_10.txt';
my $changed_file = 'task_10_changed.txt';
my $updated_text;

if ( ! open SOURCE, "<", $source_file){
    die "Что пошло не так: $!";
}
open CHANGED, ">", $changed_file;


while (<SOURCE>) {
    # chomp;
    my $replaced_string = $_;
    $replaced_string =~ s/word/w0rd/g;
    $updated_text .= $replaced_string;
}

print CHANGED $updated_text;
