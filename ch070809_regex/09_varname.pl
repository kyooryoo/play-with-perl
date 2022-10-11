#!/usr/bin/perl -w

print "check if input is a valid var name\n"; 
print "(terminate the test with Ctrl+D)\n";

# recall that var name cannot start with a number
while (<>) {
    chomp;
    if (/^\$[A-Za-z_][\w]+$/) {
        print "'$_' is a valid var name.\n";
    } else {
        print "'$_' is NOT a valid var name!\n";
    }
}