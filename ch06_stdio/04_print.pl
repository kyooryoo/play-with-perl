#!/usr/bin/perl -w

@array = qw[ fred barney betty ];
# print pure content of a list
print "\nthere is no space between list items:\n";
print @array, "\n";
# print a string converted list
print "\nnotice there is space between list items:\n";
print "@array", "\n";

print "\nlet's see why we need the first print method.\n";
print "input something per line:\n";
@array = <STDIN>;
print "\nnow if we print list directly:\n";
print @array, "\n";
print "\nhow about print list in quotation marks:\n";
print "@array", "\n";
print "conclusion: 'print \@array' works in some scenarios!\n";
print "yes, especially when input is not chompped\n";