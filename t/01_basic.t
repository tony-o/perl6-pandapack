#!/usr/bin/env perl6

use Pandapack;
use Test;
use lib 't/lib';

plan 1;

Pandapack.new.build;

ok 1, 'passed build phase';
