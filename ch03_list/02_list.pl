#!/usr/bin/perl

print ((1,2,3), "\n"); # create list literal directly
print ((1,2,3,), "\n"); # last comma will be ignored
print (('fred', 4.5), "\n"); # list can mix data typess
print ((), "\n"); # an empty list
print ((1..5), "\n"); # create list with a range operator
print ((2.7..6.7), "\n"); # number will be cut to int
print ((5..1), "\n"); # count down does NOT work
print ((1, 3, 8..12, 19), "\n"); # mix use of range operator

$a = 0;
$b = 4;
print (($a..$b), "\n"); # use var in range operator

print (("fred", "berney", "wilma", "dino"), "\n");
# use qw operator to save inputting quotation marks
print (qw/ fred berney wilma dino /, "\n");
# other special characters work as well with qw operator
# use \ to escape the special character for quotation
print (qw! fred berney wilma dino\! !, "\n");
# however, # should be avoided since it seems like comment
print (qw# fred berney wilma dino #, "\n\n");

# assign values to vars in bulk
($fred, $barney, $dino) = ("flintstone", "rubble", "undef");
print "New vars: $fred $barney $dino\n";
# exchange var values with similar method
($fred, $barney) = ($barney, $fred);
print "After exchange: $fred $barney $dino\n";

# extra values provided are ignored: granite
($fred, $barney, $dino) = qw< flintstone rubble slate granite >;
print "$fred $barney $dino\n";
# missing value that should be provided are filled with undef
($wilma, $dino) = qw[ flintstone ];
print "$wilma $dino\n";
if (!defined($dino)) {
    print "\$dino is not defined!\n\n";
}

# assign values to array items with the same technique
($rocks[0], $rocks[1], $rocks[2], $rocks[3]) = qw{talc mica feldspar quartz};
print "The rocks: $rocks[0], $rocks[1], $rocks[2], $rocks[3]\n";
# another way to refer the whole array is using @
print "All the rocks: @rocks\n";
@rocks = ();
print "Now \$rocks is cleared: @rocks\n";
# recreate $rocks with mixed list values of array, var, and string
@rocks = qw* talc mica *;
$rock = "quartz";
# a list cannot hold an array but only scalars
# in the future, you can save array reference into a list
@rocks = (@rocks, "feldspar", $rock);
print "The rocks are back: @rocks\n\n";

# pop removes the last item and returns it
$quartz = pop(@rocks);
print "Pops $quartz and results with \@rocks: @rocks\n";
# another way to achieve the same purpose
$feldspar = pop @rocks;
print "Now pops $feldspar and results with: @rocks\n";
# remove the last item and drop it
pop @rocks;
print "The final result of \@rocks is: @rocks\n\n";

# push adds item to the end of an array
push(@numbers, 0);
print "Pushed 0: @numbers\n";
push @numbers, 8;
print "Pushed 8: @numbers\n";
push @numbers, 5..9;
print "Pushed 5..9: @numbers\n";
@others = qw^ 3 4 5 ^;
push @numbers, @others;
print "Pushed @others: @numbers\n\n";

# shift removes and returns the heading item in an array
$talc = shift(@numbers);
print "shift $talc from \@numbers got: @numbers\n";
$a = shift @numbers;
print "now shift $a from \@numbers got: @numbers\n";
shift @numbers;
print "after another shift got:@numbers\n";
unshift(@numbers, 1);
print "after unshift 1 got: @numbers\n";
unshift @numbers, 2;
print "after unshift 2 got: @numbers\n";
unshift @numbers, @others;
print "after unshift @others got: @numbers\n\n";

# be careful about using array in a string
$array[3] = "wrong";
$array = "right";
# if we want to print string: right[3]
print "\$array[3]: $array[3]\n";
print "\${array}[3]: ${array}[3]\n";
print "'\$array'.'[3]': $array"."[3]\n";
print "\$array\\[3]: $array\[3]\n\n";