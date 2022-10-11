#!/usr/bin/perl
# make sure perl-doc is installed before running this script

# execute an external command and save response into a variable
# the command returns perl document about a function *atan2*
@lines = `perldoc -u -f atan2`;

# loop through the returned lines of text and match with Regex
# remove matched x< and turn following chars to upper case till >
foreach (@lines) {
    print; # print the text before regex processing
    s/\w<([^>]+)/\U$1/g;
    print; # pring the text after regex processing
}