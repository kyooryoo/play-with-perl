#!/usr/bin/perl -w
# adding -w to turn on warnings

print 12 * 3;
print "\n";
# following code will trigger warning
print "12fred34" * "   3";
print "\n";