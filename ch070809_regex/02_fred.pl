#!/usr/bin/perl -w

# input Fred, frederick, Alfred to test
print "\ntest match with Fred, frederick, and Alfred:\n";
print "(terminate the test with Ctrl+D)\n";
while (<>) {
    chomp;
    if (/fred/) {
        print "fred matched $_!\n";
    } else {
        print "fred does not match $_!\n";
    }
}