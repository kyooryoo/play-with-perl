#!/usr/bin/perl -w

# a program similar to grep for seaching keywords
# it searches input string for specified keyword
print "this program should work like grep:\n";

# now get matching pattern from external param
# special chars should be escaped, such as: hello\|good-bye
my $what = shift @ARGV;
print "the match pattern is: $what\n";

if (defined $what) {
    while (<>) {
        if (/\b($what)\b/i) {
            print "We saw $what in your input!\n";
        } else {
            print "We did NOT see $what in your input!\n";
        }
    }
}
