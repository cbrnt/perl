#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

my $text = "If you really want to hear about it, the first thing you'll probably want to know is
            where I was born, an what my lousy childhood was like, and how my parents were
            occupied and all before they had me, and all that David Copperfield kind of crap, but I
            don't feel like going into it, if you want to know the truth.";

$text =~ s/[,\.]//g;
my $lowered_text = lc($text);
my @words= split / /, $lowered_text;

my %count;

for (@words)
{
    chomp;
    $count{$_}++;
}
print "Всего слов: " . scalar @words . "\n";
for (keys(%count)) {
    print "Слово \"$_\" встречалось в тексте $count{$_} раз" . "\n";
}

# не понятно как убрать 33 символа отступа, потому как они не считаются как пробелы