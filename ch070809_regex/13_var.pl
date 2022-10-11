#!/usr/bin/perl -w

# use var value in match pattern
print "input something with or without 'larry':\n";
my $what = "LARRY";
while (<>) {
    if (/\b($what)\b/i) {
        print "We saw $what in your input!\n";
    } else {
        print "We did NOT see $what in your input!\n";
    }
}
