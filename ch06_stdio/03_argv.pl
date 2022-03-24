#!/usr/bin/perl -w

# @ARGV is the implicit input params list
# test this program with:
# $ ./03_argv.pl fred barney betty

foreach (@ARGV) {
    print "default input param: $_\n";
}

print "\nnow override the input params!\n";
# following input params contain:
# keyboard input and non-exist file
@ARGV = qw+ fred - moe barney +;
while (<>) {
    chomp;
    print "it was $_ that I saw.\n";
}