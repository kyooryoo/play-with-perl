#!/usr/bin/perl -w

print "check if input has doubled words\n"; 
print "(terminate the test with Ctrl+D)\n";

while (<>) {
    chomp;
    if (/(\b\w+\b).+\b\1\b.*(\b\1\b)?/) {
        print "there is doubled word '$1' in your input.\n";
    } else {
        print "there is NO doubled word in your input.\n";
    }
}