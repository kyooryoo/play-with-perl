#!/usr/bin/perl -w

$length = $ARGV[0];
# print $length, "\n";
$base = "1234567890";
$mark = $base x (($length / 10) + 1);

print "input words each per line, stop with Ctrl+D:\n";
chomp(@words = <STDIN>);
print $mark, "\n";
foreach (@words) {
    printf "%".$length."s\n", $_;
}