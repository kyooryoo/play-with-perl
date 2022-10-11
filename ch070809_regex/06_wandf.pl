#!/usr/bin/perl -w

print "this program return input strings that have:\n";
print "both wilma and fred\n\n";

print "(terminate the test with Ctrl+D)\n";
foreach (<>) {
    chomp;
    if (/(wilma.*fred|fred.*wilma)/) {
        print "$_\n";
    }
}