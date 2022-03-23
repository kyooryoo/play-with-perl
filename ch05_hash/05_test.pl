#!/usr/bin/perl -w

# return last name per input of first name
my %username = (
    "fred" => "flintstone",
    "barney" => "rubble",
    "wilma" => "flintstone",
);

print "input firstname 'fred', 'barney', or 'wilma'.\n";
chomp(my $firstname = <STDIN>);
print "lastname is $username{$firstname}\n";