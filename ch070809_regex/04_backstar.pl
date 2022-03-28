#!/usr/bin/perl -w

print "this program matches input string that has:\n";
print "any numbers of \ followed by any numbers of *\n\n";

print "\ntest with \\\\**, fred, barney \\\\\\***, *wilma\\:\n";
print "(terminate the test with Ctrl+D)\n";
while (<>) {
    chomp;
    # + means match one or more times
    # * means match zero or more times
    if (/\\*\**/) {
        print "\\\\*\\** matches $_!\n";
    } else {
        print "\\\\*\\** does not match $_!\n";
    }
}