#!/usr/bin/perl -w

$name = 'fred';
if ($name gt 'Fred') {
    print "'$name' comes after 'Fred' in sorted order.\n";
} else  {
    print "'$name' does not come after 'fred'.\n";
    print "Maybe it's the same string, in fact.\n";
}

# default user input value includes new line character
$line = <STDIN>;
if ($line eq "\n") {
    print "That was just a blank line!\n";
} else {
    print "A line break is added by default for: $line";
}

$text = <STDIN>;
# remove new line character inplace of the variable
# chomp() returns 1 if there is \n chompped
$chompped = chomp($text);
if ($chompped) {
    print "Add new line manually for '$text'.\n";
}
# this time there should be nothing chompped
$chompped = chomp($text);
if (!$chompped) {
    print "Not have anything chompped for '$text'.\n";
}

$count = 0;
while ($count < 10) {
    $count += 1;
    print "Count is now $count\n";
}

if ( defined($madonna) ) {
    print "The input was $madonna\n";
} else {
    print "No input available!\n";
}