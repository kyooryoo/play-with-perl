#!/usr/bin/perl
# use warnings;
# use diagnostics;

print "Hello, world!\n";
# join strings with .
print "Hello, "."again!\n";
# string repetition
print "fred x 3: ".("fred " x 3)."\n";
print "5 x 4.8: ".(5x4.8)."\n";
print "fred x 0.8: ".("fred" x 0.8)."\n\n";

print "1.25: ".1.25."\n";
print "1.25e2: ".1.25e2."\n";
print "-6.5e2: ".-6.5e2."\n";
print "-1.2E-2: ".-1.2E-2."\n";
# for better human readability
print "61_298_734: ".(61_298_734)."\n\n";

print "0377: ".0377."\n";
print "0xff: ".0xff."\n";
print "0b1111_1111: ".0b1111_1111."\n\n";

print "2 + 3: ".(2+3)."\n";
print "5.1 - 2.4: ".(5.1-2.4)."\n";
print "3 * 12: ".(3*12)."\n";
print "10 / 3: ".(10/3)."\n";
# 10.1 % 3.9 = 10 % 3
print "10.1 % 3.9: ".(10.1%3.9)."\n";
# notice the following result might be unexpected
# it results 2 because -10 is 2 above -12
print "-10 % 3: ".(-10%3)."\n";
# following result of -1 might be expected
print "-10 % -3: ".(-10%-3)."\n\n";

print "Some special chars: "."☃★๛⅚∞☃☠"."\n\n";

print 'fred'."\n";
print "fred\n";
# \n is not translated within single quotation
print 'fred \n cat'."\n";
# a literal new line will be preserved in single quotation
print 'fred (a new line here)
cat'."\n";
# \' is translated to ' in single quotation - exception
print 'fred\'s cat'."\n";
# \\ is translated to \ in single quotation - exception
print 'fred \\ cat'."\n\n";

print "\x{2668}"."\n"; # Unicode hot springs char by code
print "\N{SNOWMAN}"."\n\n"; # Unicode snowman char by name

print "0377 * 2: ".(0377 * 2)."\n"; # this 0377 is an oct number
print "'0377' * 2: ".('0377' * 2)."\n"; # this '0377' is a decimal number
# following line of code will cause warnings
print "'123abc' + '1': ".('123abc' + '1')."\n"; # auto match to numbers

# while a lot of translations work with double quotation
print "\\r - return\n"; # new line
print "fred's\r cat\n"; # the first line is lost
print "\\t - table\n"; # tabs
print "fred's\t cat\n";
# a new line and continues from the very position
print "\\f - new page (LOOK OUT!)\n";
print "fred's\f cat\n";
print "\\b - back\n";
print "fred's\b cat\n";
print "\\a - ring bell\n";
print "fred's\a cat\n";
# print "\\e - ESC\n"
# print "fred\'s\e cat\n";
print "\\\" - for \"\n";
print "fred\"s cat\n";
print "\\l - next one char in lower case\n";
print "\lFred's Cat\n";
print "\\L - next all chars in lower case\n";
print "\LFRED'S CAT\n";
print "\\u - next one char in upper case\n";
print "\ufred's Cat\n";
print "\\U - next all chars in upper case\n";
print "\Ufred's cat\n";
print "\\Q - add \\ to special chars\n";
print "\Qfred's cat"."\n";

$fred = "fred";
$Fred = "brontosaurus steak";
# perl cares about char case
print "$fred likes $Fred\n";
# if needs to print a standalone var
print "Works: ", "$Fred", "\n";
print "Better: ", $Fred, "\n";
# what if mix var with chars
print "How about \$Freds: $Freds?\n";
print "Should be \${Fred}s: ${Fred}s\n";
print "Or \$Fred.\"s\": $Fred"."s\n";
