#!/usr/bin/perl -w

# a naked block creates a domain
{
    print "please enter a number: ";
    chomp(my $n = <STDIN>);
    my $root = sqrt $n;
    printf "the square root of $n is %.2f\n\n", $root
}

print "check \$n and \$root outside block:\n";
print "\$n is NOT defined!\n" if !defined($n);
print "so does \$root!\n" if !defined($root);

# for loop works like a special while loop
print "\na demo loop created by 'for':\n";
for (my $i = 1; $i <= 10; $i++) {
    print "I can count to $i\n";
}
print "\nanother demo loop by 'while':\n";
my $j = 1;
while ($j <= 10) {
    print "You can count to $j\n";
    $j++;
}

# convert for to while may increase readability
print "\ndemo of a weird for loop:\n";
for ($_ = "bedrock"; s/(.)//;) {
    print "one character is: $1\n";
}
# the equivalent while loop is as follows
# this is more easier to understand than for
print "\nnother more readable way:\n";
$_ = "rockbed";
# 
while (s/(.)//) {
    print "one character is: $1\n";
}

# similarly an infinit loop is better with while
print "\ndemo of infinit loop:\n";
# infinit loop in for is not so readable
# for (;;) {
#     print "infinit loop in for! Ctrl+C to jump out!\n";
# }
# comment out the for loop above to test followinng code
# infinit loop in while is more readable
# while (1) {
#     print "infinit loop in while! Ctrl+C to jump out!\n";
# }
# comment out the while loop above to test following code

# similarly, for and foreach work in the same way.
# however, foreach is always a better choice if appliable.
print "\na demo of for loop and foreach loop:\n";
foreach (1..10) { # you can write it as `for (1..10)`
    print "Count to $_ with foreach.\n";
}
# following code has bwo bugs: should use $i and <=
for ($i = 1; $i < 10; $i++ ) {
    print "Count to $_? - catch BUG!\n"
}