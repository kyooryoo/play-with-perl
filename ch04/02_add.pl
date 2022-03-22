#!/usr/bin/perl -w

sub add {
    print "you called add subroutine!\n";
    $a + $b;
}

$a = 3;
$b = 4;
$c = &add;
print "\$c is $c.\n";
$d = 3 * &add;
print "\$d is $d.\n";