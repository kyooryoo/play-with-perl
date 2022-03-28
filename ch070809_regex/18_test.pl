#!/usr/bin/perl -w

print "test matching tripled words. ";
my $what = "fred";
print "start from test matching '$what':\n";
print "you can input: fredfredfred, FredFredFred, or fredFredfrEd.\n";
while (<>) {
    chomp;
    if (/[$what]{3}/i) {
        print "your input $_ match ${what}x3.\n";
    } else {
        print "your input $_ NOT match ${what}x3.\n";
    }
}
