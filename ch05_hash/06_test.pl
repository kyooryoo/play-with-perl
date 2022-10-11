#!/usr/bin/perl -w

# count the number of times of your input words
# test results with the following input words:
# fred, barney, fred, dino, wilma, fred
print "input the word to count each per line:\n";
chomp(my @words = <STDIN>);

foreach $word (@words) {
    if (exists $words{$word}) {
        $words{$word} += 1;
    } else {
        $words{$word} = 1;
    }
}

print "\nnumber of the input words:\n";
foreach $word (sort keys %words) {
    print "$word\t : $words{$word}\n";
}