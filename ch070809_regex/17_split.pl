#!/usr/bin/perl -w

@result = split /:/, ":::a:::b:::c:::";
print "split ':::a:::b:::c' get: '@result'\n";

@result = split /\s+/, " this   is\n a \t   test.";
print "split with \\s+ get: '@result'\n";
# the default split works similarly as above
$_ = " this   is\n a \t   test.";
@result = split;
print "the default split: '@result'\n";

# the opposite operation is join
# notice () can always get omitted
$result = join "-", 4,5,6,7,8,9;
print "join a list with - get: '$result'\n";
# returns the item when target has only one item
$result = join "-", "a string";
print "join 'a string' with - get: '$result'\n";