#!/usr/bin/perl -w

# STDIN in long format
print "first round test of STDIN:\n";
while (defined($line = <STDIN>)) {
    print "I saw $line";
}

# STDIN in short format
print "second round test of STDIN:\n";
while (<STDIN>) {
    print "I saw $_";
}

# STDIN in background
print "third round test of STDIN:\n";
while (defined($_ = <STDIN>)) {
    print "I saw $_";
}

# read once and process all together
print "fourth round test of STDIN:\n";
foreach (<STDIN>) {
    print "I saw $_";
}