#!/usr/bin/perl -w

# test this program with:
# $ ./07_tac.pl fred barney betty

my @TEMP = @ARGV;
print "\nthe forward print result:\n";
foreach (<>) {
    chomp;
    print $_, "\n";
}

@ARGV = @TEMP;
print "\nthe backward print result:\n";
foreach (reverse <>) {
    chomp;
    print $_, "\n";
}