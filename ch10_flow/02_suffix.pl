#!/usr/bin/perl -w

# notice the if clause after print statement
print "check if input nummber is positive:\n";
while (<>) {
    chomp;
    print "$_ is a positive number!\n" if $_ > 0;
}

# double $i till it is greater than $j in short
print "\ninput i and j, double i till greater than j:\n";
print "input i: ";
chomp($i = <STDIN>);
print "input j: ";
chomp($j = <STDIN>);
$i *= 2 until $i > $j;
print "now we have i value of $i\n";

# another similar test to the case above
print "\ninput n and m, add 2 to n till greater than m:\n";
print "input n: ";
chomp($n = <STDIN>);
print "input m: ";
chomp($m = <STDIN>);
print " ", ($n += 2) while $n < $m;
print "\nnow n=$n is greater than m=$m\n";