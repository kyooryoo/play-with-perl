#!/usr/bin/perl -w

print "input some string for sorting.\n";
print "stop input by Ctrl + D:\n";
@input = <STDIN>;
@input = sort @input;
print "\noutput of input per line:\n", @input;
chomp(@input);
print "\noutput of input in one line:\n";
for (@input) {
    print "$_, ";
}