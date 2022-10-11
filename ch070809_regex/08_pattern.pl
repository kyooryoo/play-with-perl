#!/usr/bin/perl -w

print "check and test the following patterns\n"; 
print "(terminate the test with Ctrl+D)\n";

# matches content within double quotation marks
print "test the first pattern: /\"([^\"]*)\"/:\n";
while (<>) {
    chomp;
    if (/"([^"]*)"/) {
        print "'$_' matches '$1'\n";
    } else {
        print "'$_' not match\n";
    }
}

print "\nthe second pattern: /^0?[0-3]?[0-7]{1,2}\$/:\n";
while (<>) {
    chomp;
    if (/^0?[0-3]?[0-7]{1,2}$/) {
        print "'$_' matches\n";
    } else {
        print "'$_' not match\n";
    }
}

print "\nthe second pattern: /^\\b[\\w.]{1,12}\\b\$/:\n";
while (<>) {
    chomp;
    if (/^\b[\w.]{1,12}\b$/) {
        print "'$_' matches\n";
    } else {
        print "'$_' not match\n";
    }
}