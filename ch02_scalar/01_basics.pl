#!/usr/bin/perl

print "Hello, world!\n";
# join strings with .
print "Hello, "."again!\n";
# string repetition
print "fred x 3: ".("fred " x 3)."\n";
print "5 x 4: ".(5 x 4)."\n\n";

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

print 'fred'."\n";
print "fred\n";
print 'fred\n'."\n";
print "fred\\n\n";
print 'fred\'s cat'."\n";
print "fred\'s cat\n";

print "\\r - return\n";
print "fred's\r cat\n";
print "\\t - table\n";
print "fred's\t cat\n";
print "\\f - new page\n";
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
