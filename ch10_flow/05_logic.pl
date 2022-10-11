#!/usr/bin/perl -w

# demo logic operators
print "what dessert do you have, cake or ice cream?\n";
chomp($answer = <STDIN>);
if ($answer =~ /cake/i && $answer =~ /ice cream/i) {
    print "Hooray! Cake and ice cream!\n";
} elsif ($answer =~ /cake/i || $answer =~ /ice cream/i) {
    print "That's still good...\n";
} else {
    # do nothing
}

# if left part is false, && will ignore right and returns false
# if left part is true, || will ignore righ and returns true
print "\ndemo of the short-circuit logic operator:\n";
print "input a number: ";
chomp(my $n = <STDIN>);
if (($n != 0) && (100/$n < 5)) {
    print "100/$n is below five.\n";
} else {
    print "100/$n is NOT below five.\n";
}

# short-circuit can be used for assiging default value
print "\ndemo of default value by short-circuit:\n";
%user = (
    "first_name" => "Bill",
    "last_name" => "Gates",
);
my $first_name = $user{"first_name"};
my $middle_name = $user{"middle_name"} || '(No middle name)';
print "$first_name has middle name: $middle_name\n";

# or for controlling workflow in a not obvious way
print "\ninput two number and top the first:\n";
print "a: ";
chomp($a = <STDIN>);
print "b: ";
chomp($b = <STDIN>);
# when left is true, right will get executed.
($a < $b) && ($a = $b);
print "now a and b are: $a, $b\n";
print "let's see if a is greater than 10:\n";
# when left is false, right will get executed.
($a <= 10) || print "yes, a is greater than 10!\n";

# demo the operator `expr ?: is_true_expr : is_false_expr`
print "\ndemo the ?: operator - is it weekend today? \n";
chomp($answer = <STDIN>);
my $location = $answer eq "yes" ? "home" : "work";
print "I am currently at $location.\n";

# join ?: to construct a switch alike logic
print "\nwhat is your shoes size? ";
chomp($size = <STDIN>);
my $cat = 
($size < 10) ? "small" :
($size < 20) ? "medium" :
($size < 50) ? "large" :
"extra-large"; # default-value
print "your size in category: $cat\n";