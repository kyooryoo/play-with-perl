#!/usr/bin/perl -w

$fred[0] = "yabba";
$fred[1] = "dabba";
$fred[2] = "doo";

print $fred[0], "\n\n";

# update an array item
$fred[2] = "diddley";
print $fred[2], "\n\n";

# update item with join operator
$fred[1] .= "whatsis";
print $fred[1], "\n\n";

# index will be cut off to int
$index = 2.725;
print $fred[$index-1], "\n";
print "should be the same as:\n", $fred[1], "\n\n";

# index out of range returns undef
print $fred[123_456], "\n";
$blank = $nosuchvar;
print "should be the same as:\n", $blank, "\n\n";

# use # to refer the index of the last array item
print "The last index of \$fred: $#fred\n";
print "The number of items in \$fred: ", $#fred + 1, "\n\n";

# also can use -1 to access the last array item
print "Access the last item in \$fred: $fred[$#fred]\n";
print "The same as using index -1: $fred[-1]\n";