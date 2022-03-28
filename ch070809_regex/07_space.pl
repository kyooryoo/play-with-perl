#!/usr/bin/perl -w

print "match fred or wilma then any space then flintstone\n"; 
print "(terminate the test with Ctrl+D)\n";

while (<>) {
    chomp;
    if (/(wilma|fred)\s+flintstone/) {
        print "match: $_\n";
    } else {
        print "not match: $_\n";
    }
}