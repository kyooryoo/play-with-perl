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
    print "A line break is added by default for '$line'";
}

$text = <STDIN>;
# remove new line character inplace of the variable
$chropped = chomp($text);
if ($chropped) {
    print "Add new line manually for '$text'.\n";
}