#!/usr/bin/perl -w

print "hello world\n\n";

print "The answer is ";
print 6 * 7;
print ".\n";
# following code results the same as above
print "The answer is ". 6 * 7, ".\n\n";

$meal = "brontosaurus steak";
print "fred ate a $meal.\n";
print 'fred ate a '.$meal.".\n\n";

# if need to print $ sign
print "fred likes eating \$meal.\n";
print 'fred likes eating $meal'.".\n\n";

$n = 3;
# notice the s after $meal breaks the var
print "fred ate $n $meals.\n";
# the correct way is as follows
print "fred ate $n ${meal}s.\n";
print "fred ate $n $meal"."s.\n\n";

print "4 ** 3 ** 2: ", 4 ** 3 ** 2, "\n";
print "(4 ** 3) ** 2: ", (4 ** 3) ** 2, "\n";
print "72 / 12 / 3: ", 72 / 12 / 3, "\n";
print "36 / 6 * 3: ", 36 / 6 * 3, "\n\n";

print "35 != 30 + 5 : \t\t", 35 != 30 + 5 ? "true" : "false", "\n";
print "35 == 35.0 : \t\t", 35 == 35.0 ? "true" : "false", "\n";
print "'35' eq '35.0' : \t", '35' eq '35.0' ? "true" : "false", "\n";
print "'fred' lt 'barney' : \t", 'fred' lt 'barney' ? "true" : "false", "\n";
print "'fred' lt 'free' : \t", 'fred' lt 'free' ? "true" : "false", "\n";
print "'fred' eq 'fred' : \t", 'fred' eq 'fred' ? "true" : "false", "\n";
print "'fred' eq 'Fred' : \t", 'fred' eq 'Fred' ? "true" : "false", "\n";
print "' ' gt '' : \t\t", ' ' gt '' ? "true" : "false", "\n"