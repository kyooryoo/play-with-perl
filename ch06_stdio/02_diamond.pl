#!/usr/bin/perl -w

# run this program directly or with:
# ./02_diamond.pl fred barney betty
print "use Ctrl+D to terminate input!\n";

# <> takes input file or keyboard input
print "\nthe program in complete mode:\n";
while (defined($line = <>)) {
    chomp($line);
    print "it was $line that I saw!\n";
}

print "\nthe proogram in short mode:\n";
# the program above is in short as follows
# here we use default param $_
while (<>) {
    chomp; # there is an implicit use of $_
    print "it was $_ that I saw!\n";
}