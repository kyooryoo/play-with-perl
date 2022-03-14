#!/usr/bin/perl

# read standard input with <STDIN>
# read input including the last new line char
$line = <STDIN>;
if ($line eq "\n") {
    print "That was just a blank line!\n";
} else {
    print "That line of input was: $line\n";
}

# get familiar with chomp
# assign input to var and remove ending new line
$num1 = chomp($text = <STDIN>);
$num2 = chomp($text);

if ($line eq "\n") {
    print "That was just a blank line!\n";
} else {
    print "That text of input was: $text\n";
    print "First chomp removed $num1 char(s)\n";
    print "Second chomp removed $num2 char(s)\n"
}