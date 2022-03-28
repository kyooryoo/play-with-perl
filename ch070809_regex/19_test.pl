#!/usr/bin/perl -w

# loop through test.txt and match word after "=item\s+"
print "match the first word after '=item'.\n";
print "the input file is 'test.txt':\n\n";
foreach (<>) {
    chomp;
    if (/=item[\s]*([a-zA-Z_][\w]+)[\s]*/i) {
        print "the matched word is: $1\n";
    }
}