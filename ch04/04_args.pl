#!/usr/bin/perl -w

sub max {
    if ($_[0] > $_[1]) {
        $_[0];
    } else {
        $_[1];
    }
}

$a = &max(6,11);
print("max of 6 and 11 is: $a\n");

$b = &max(12,3);
print("max of 12 and 3 is: $b\n");