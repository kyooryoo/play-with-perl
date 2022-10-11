#!/usr/bin/perl

# run this script with: perl ./01_sample.pl
# then input something like: 1:2:3:4:5:6:7
# the output should be: 1   3   2   6

# this program domonstrates some default features of Perl
# read input from stdin and assign value to the default var
while(<>) {
    # remove the ending new line indicator from the default var
    chomp;
    # split input value with : reorder and separate them with \t 
    print join("\t", (split /:/)[0, 2, 1, 5]), "\n";
}