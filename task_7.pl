#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

my @words = ('wtf', 'lol', 'kek', 'bugagaga', 'лол', 'кек', '9000', '10000');
my @cyrillic_symbols = qw/а б в г д е ё ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я \
                        А Б В Г Д Е Ё Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я/;


my @latin_symbols = ('A' .. 'Z', 'a' .. 'z', 0 .. 9) ;
push(@latin_symbols, @cyrillic_symbols);
print sort {$b cmp $a} @words;
