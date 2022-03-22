#!/usr/bin/perl -w

sub max {
    # read args and initialize internal vars
    my ($a, $b) = @_;
    # when there is only one line in code block
    # the ; could be eliminated
    if ($a > $b) { $a } else { $b }
}

$a = &max(12,6);
print "max of 12 and 6: $a\n";
$b = &max(5,11);
print "max of 5 and 11: $b\n";