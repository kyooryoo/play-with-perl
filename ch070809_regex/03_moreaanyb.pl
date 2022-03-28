#!/usr/bin/perl -w

# this program matches input string that:
# has at least one a followed by any numbers of b
print "\ntest match with a, ab, aabb, bb:\n";
print "(terminate the test with Ctrl+D)\n";
while (<>) {
    chomp;
    # + means match one or more times
    # * means match zero or more times
    if (/a+b*/) {
        print "a+b* matches $_!\n";
    } else {
        print "a+b* does not match $_!\n";
    }
}