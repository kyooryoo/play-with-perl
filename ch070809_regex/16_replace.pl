#!/usr/bin/perl -w

# use s/a/b/ to replace a with b
$_ = "He's out bowling with Barney tonight.";
print $_, "\n";
s/Barney/Betty/;
print $_, "\n";

# replace operation returns true if successful
if (s/Wilma/Fred/) {
    print "replaced Wilma with Fred.\n";
} else {
    print "did not find Wilma.\n";
}

# use regex in replace operation
s/with (\w+)/against $1/;
print $_, "\n\n";

# some samples of replace operations
$_ = "green scaly dinosaur";
print "original: $_\n";

s/(\w+) (\w+)/$2, $1/;
print "swap the first and second words: $_\n";

s/^/huge, /;
print "add one word in beginning: $_\n";

s/,.*een//;
print "remove from 1st comma to 'een': $_\n";

s/green/red/; # this replace fails silently
print "replace 'green' with 'red': $_\n";

s/\w+$/($`!)$&/;
print "match last word, add before as prefix: $_\n";

s/\s+(!\W+)/$1 /;
print "match !), remove prefix _, add suffix _: $_\n";

# notice default replace only applies to the first match
s/huge/gigantic/;
print "replace huge with gigantic: $_\n\n";


$_ = "Home, sweet home home!";
print "new original: $_\n";

# use /g flag to force replacing all matches
s/home/cave/g;
print "replace all homes with cave: $_\n";

# besides g, s and i also work as flag
s/home/cave/gi;
print "replace all homes regardless of case: $_\n";

# remove extra spaces in middle of content
$_ = "input   date\t may have  \nextra whitespace.";
s/\s+/ /g;
print "after removing extra middle spaces: $_\n";

# remove prefix and suffix spaces
$_ = "  \t  remove extra space  \n  ";
s/^\s+//;
s/\s+$//;
print "after removing pre and suffix spaces: $_\n";

# use custom boundary char for replace operation
# similar to m// binding also works for s///
$url = "http://www.google.com";
# use not paired character, such as #
$url =~ s#^http://#https://#;
print "replace http with https: $_\n";
# use paired characters, such as {}
$url =~ s{^https://}{http://};
print "replace https with http: $_\n";


# recall that flag /g means match all
# /i means match not case sensitively
# /s means match all kinds of space or empty lines
print "\ncheck flags used in matching:\n";
$flag = "wilma wIlma wiLma wilMa wilmA";
print "the original string: '$flag'\n";
$flag =~ s$wilma$Wilma$g;
print "after replace all 'wilma' with 'Wilma': '$flag'\n";
$flag =~ s%wilma%Wilma%gi;
print "plus replace not case sensitively: '$flag'\n";
print "replace all contents after ending indicator with: 's{__END__.*}{}s'\n";

# convert upper and lower case
print "convert between uppper and lower cases:\n";
$case = "I saw Barney with Fred.";
print "original string: $case\n";
# match fred or barney case insensitively
# and turn each matched value to upper case
$case =~ s/(fred|barney)/\U$1/gi;
print "to upper case: $case\n";
# match fred or barney case insensitively
# and turn each matched value to lower case
$case =~ s/(fred|barney)/\L$1/gi;
print "to lower case: $case\n";
# match two strings that joined with 'with'
# turn the second matched word to upper case
# swap the position of the two matched words
$case =~ s/(\w+) with (\w+)/\U$2\E with $1/i;
print "end match with \\E: $case\n";
# change case of the first character in string
$case =~ s[(\w+) with (\w+)][\u\L$1\E with \l\U$2\E]i;
print "chage the first char: $case\n";
# use case replacement inplace in string
print "input your name case insensitively:\n";
chomp($name = <STDIN>);
# if not close with \E, Perl will become perl!
print "Hi \u\L$name\E, welcome to Perl!\n";