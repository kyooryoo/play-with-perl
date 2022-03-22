#!/usr/bin/perl -w

# loop through an array
foreach $rock (qw^ bedrock slate lava ^) {
    print "One rock is $rock.\n";
}

# modify an array per item
@rocks = qw! bedrock slate lava !;
foreach $rock (@rocks) {
    $rock = "\t$rock";
    $rock .= "\n";
}
print "\nThe rocks are:\n", @rocks, "\n";

# perl has a default var $_
foreach (1..10) {
    print ("count with \$_: $_\n");
}

# all functions use $_ by default
$_ = "\nFrom default var \$_!!\n\n";
print;

# reverse an array in three ways
@one2ten = 1..10;
print "one to ten: @one2ten\n";
# reverse(@array)
@rev1to10 = reverse(@one2ten);
print "rev 1 to 10: @rev1to10\n";
# reverse a..b
@ten2one = reverse 1..10;
print "ten to one: @ten2one\n";
# reverse @array
@rev10to1 = reverse @ten2one;
print "rev 10 to 1: @rev10to1\n\n";

# sort an array as strings in different ways
@rocks = qw@ bedrock slate rubble granite @;
@sorted = sort(@rocks);
print "Sorted rocks: @sorted\n";
@back = reverse sort @rocks;
print "Back sorted: @back\n";
@suprise = sort 97..103;
print "Expected sorting? @suprise\n\n";