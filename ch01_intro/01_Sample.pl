#!/usr/bin/perl

# run this script with ./01_sample.pl
# then input something like: 12:345:6789

while(<>) {
    chomp;
    print join("\t", (split /:/)[0, 2, 1, 5]), "\n";
}