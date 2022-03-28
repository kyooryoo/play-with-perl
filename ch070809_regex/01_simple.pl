#!/usr/bin/perl -w

# check specified regex in default $_
$_ = "fred barney betty";
if (/barney/) {
    print "'barney' matched!\n";
}

# input beforematchafter to test
print "input 'beforematchafter' to test:\n";
while (<>) {
    chomp;
    if (/match/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match.\n";
    }
}