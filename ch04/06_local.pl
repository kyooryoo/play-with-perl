#!/usr/bin/perl -w

$office = "global";
sub say { print "$office\n"; }
&say;

# this local office overrides global one
sub fred { local($office) = "fred"; &say; }
&fred;

# this my office does not override global one
sub barney { my($office) = "barney"; &say; }
&barney;