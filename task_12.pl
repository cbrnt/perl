#!/usr/bin/env perl
use strict;
use warnings;
use common::sense;

my $i;
# $i = ++$i + ++$i + ++$i;
print 'Сначала делим выражение на две группы:1) (++$i + ++$i) 2) ((++$i + ++$i) + ++$i)' . "\n";
print "Сначала вычисляется группа 1" . "\n";
print "Инкременты срабатывают поочереди и увеличивают i до 2. То есть в каждой ++i уже двоечка" . "\n";
$i = undef;
print 'Суммируем первую группу (++$i + ++$i) = ' . (++$i + ++$i) . "\n";
$i = undef;
print 'Теперь считаем группу 2. Здесь в третьей ++i уже есть 2. Срабатывает инкремент получаем 3. Складываем 4 + 3 = ' . ((++$i + ++$i) + ++$i) . "\n";
