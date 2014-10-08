#!/usr/bin/env perl6
use Test;

class Packopanda::Plugins::Test {
#prebuild
  method bundle {
    ok 1, 'bundle called';
  }

#postbuild
  method install {
    ok 1, 'install called';
  }
}
