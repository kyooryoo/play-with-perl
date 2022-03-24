#!/usr/bin/perl -w

sub countDown {
    if ($a < $b) {
        reverse $a..$b;
    } else {
        reverse $b..$a;
    }
}

$a = 11;
$b = 6;
@c = &countDown;
for (@c) {
    print "$_, ";
}