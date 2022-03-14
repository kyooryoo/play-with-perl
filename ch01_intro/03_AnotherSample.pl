#!/usr/bin/perl
# make sure perl-doc is installed before running this script

# execute an external command and save response into a variable
# the command returns perl document about a function *atan2*
@lines = `perldoc -u -f atan2`

# loop through the returned lines of text and fiter with Regex
# print filtered lines of text 
foreach (@lines) {
    s/\w<([^>]+)/\U$1/g;
    print;
}