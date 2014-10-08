#!/usr/bin/env perl6
use Pluggable;

class Packopanda does Pluggable {
  method build {
    my %instances;
    for @.plugins -> $plugin {
      %instances{$plugin} = ::($plugin).new;
      %instances{$plugin}.bundle if %instances{$plugin}.^can('bundle');
    }
    for @.plugins -> $plugin {
      %instances{$plugin} = ::($plugin).new if !defined %instances{$plugin};
      %instances{$plugin}.install if %instances{$plugin}.^can('install');
    }
  }
};
