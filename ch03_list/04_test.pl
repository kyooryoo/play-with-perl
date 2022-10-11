#!/usr/bin/perl -w

print "input characters one per line.\n";
print "stop input by Ctrl + D.\n";
chomp(@list = <STDIN>);
@list = reverse @list;
print "reversed input result is:\n";
for (@list) {
    print "$_, "
}