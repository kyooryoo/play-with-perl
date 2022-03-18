#!/usr/bin/perl -w

$r = 12.5;
$pi = 3.141592654;
$result = $r * $pi * 2;
print "circ with r of 12.5: $result\n\n";

print "input a radius: ";
chomp($r = <STDIN>);
$r < 0 ? 0 : r;
$result = $r * $pi * 2;
print "circ with r of $r: $result\n\n";

print "input two numbers:\n";
chomp($a = <STDIN>);
chomp($b = <STDIN>);
$result = $a * $b;
print "multipy $a with $b gets $result\n\n";

print "input the text you want to print:\n";
$text = <STDIN>;
print "input the number of times you want to print:\n";
chomp($times = <STDIN>);
print "here is the output:\n"
while ($times > 0) {
    print "$text";
    $times--;
}