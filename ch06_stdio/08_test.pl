#!/usr/bin/perl -w

$base = "1234567890";
$mark = $base x 6;

print "input words each per line, stop with Ctrl+D:\n";
chomp(@words = <STDIN>);
print $mark, "\n";
foreach (@words) {
    printf "%20s\n", $_;
}