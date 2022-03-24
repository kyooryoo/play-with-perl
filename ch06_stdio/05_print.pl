#!/usr/bin/perl -w

print "print out is the same:\n";
$a = print 2+3;
print " - the result of 'print 2+3'\n";
# following print out may suprise you
$b = print (2+3)*4;
print " - the result of 'print (2+3)*4'\n";
print "notice '*4' is not counted as printing content\n";

print "\nnow check the returned values:\n";
print "returned value of 'print 2+3': $a\n";
print "returned value of 'print (2+3)*4': $b\n";
print "because successful print operation returns 1..."