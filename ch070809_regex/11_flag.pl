#!/usr/bin/perl -w

print "\ntest the /i flag:\n";
my @target = ("Fred", "fred", "fRed", "dref");
foreach (@target) {
    if (/freD/i) {
        print "$_ matches 'freD'!\n";
    } else {
        print "$_ does NOT match 'freD'!\n";
    }
}

print "\ntest the /s flag:\n";
$_ = "There is a \n in string";
if (/there\b.*\bstring/) {
    print "the regex '/there\\b.*\\bstring/' matches:\n'$_'.\n";
} else {
    print "the regex '/there\\b.*\\bstring/' does NOT match:\n'$_'.\n";
}
if (/there\b.*\bstring/s) {
    print "the regex '/there\\b.*\\bstring/s' matches:\n'$_'.\n";
} else {
    print "the regex '/there\\b.*\\bstring/s' does NOT match:\n'$_'.\n";
}
if (/there\b.*\bstring/si) {
    print "the regex '/there\\b.*\\bstring/si' matches:\n'$_'.\n";
} else {
    print "the regex '/there\\b.*\\bstring/si' does NOT match:\n'$_'.\n";
}