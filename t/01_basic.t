#!/usr/bin/env perl6

use Packopanda;
use Test;
use lib 't/lib';

plan 3;

Packopanda.new.build;

ok 1, 'passed build phase';
