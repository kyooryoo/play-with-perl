#!/usr/bin/perl -w

print "input number per line between 1 and 7:\n";
chomp(@indexs = <STDIN>);
@names = qw$ fred betty barney dino wilmma pebbles bamm-bamm $;
print "the names per your specified index are:\n";
for (@indexs) {
    print "@names[$_-1], ";
}