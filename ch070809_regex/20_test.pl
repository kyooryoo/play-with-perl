#!/usr/bin/perl -w

# match word after "=item\s+" that appear more than once
print "match doubled word after '=item'.\n";
print "the input file is 'test.txt':\n\n";
foreach (<>) {
    chomp;
    if (/=item[\s]*([a-zA-Z_][\w]+)[\s|\w]*\1/i) {
        my $count = 0;
        print $_, "\n";
        foreach (/(\w+)/g) {
            if ($_ eq $1) {
                $count += 1;
            }
        }
        print "the word '$1' appears $count times.\n\n";
    }
}