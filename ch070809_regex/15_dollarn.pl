#!/usr/bin/perl -w

# $n means the matched and cached nth value
my $string = "hello there, neighbor!";

# following pattern matches the word before comma
if ($string =~ /\s(\w+),/) {
    print "the matched word is: $1\n\n";
}

# following pattern matches all three words
if ($string =~ /(\w+) (\w+), (\w+)/) {
    print "matched words are: $1, $2, and $3\n";
    print "not used matching var has value: '$4'\n\n";
}

# cached matched value get cleared ONLY by next successful match
# following match will fail and will not update matched vars
"should not match" =~ /(\d+)\s(\d+)\s(\d+)/;
print "the matched vars are still: $1, $2, and $3\n\n";

# following match will fail and will not update matched vars
"should match now" =~ /(\w+)\s(\w+)\s(\w+)/;
print "the newly matched vars are: $1, $2, and $3\n\n";

# one successful match clears all cached matched vars
# following sample update $1 and cleared $2 and $3
"match one" =~ /(\w+)/;
print "mached var is '$1' and cleared are '$2' and '$3'.\n\n";

# default match vars: $&, $`, and $' for:
# matched content and the before and after content
"should match now" =~ /\s(\w+)\s/;
print "matched part via \$&: '$&'\n";
print "before matched via \$`: '$`'\n";
print "after matched via \$': '$''\n";
print "highlight matched: |$`<$&>$'|\n";
print "notice, \$& != \$1: '$&' != '$1'\n";