#!/usr/bin/perl -w

print "this program returnn input strings that have:\n";
print "wilma or Wilma\n\n";

print "(terminate the test with Ctrl+D)\n";
foreach (<>) {
    chomp;
    if (/(wilma|Wilma)/) {
        print $_, "\n";
    }
}