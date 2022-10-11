#!/usr/bin/perl -w

# unwind: the action of convert hash to list
my %hash = ("foo", 35, "bar", 12.4, 2.5, "hello", "Wilma", 1.72e30, "betty", "bye\n");
print "hash content in \%hash:\n", %hash, "\n\n";

# a better way to initialize the hash is using =>
%hash = (
    "foo" => 35, 
    "bar" => 12.4, 
    2.5 => "hello", 
    "Wilma" => 1.72e30, 
    "betty" => "bye\n",
);
# access a specific hash item
print "hash item with \$hash{\"key\"}: ", $hash{"2.5"}, "\n\n";

# unwind a hash to list
@array = %hash;
print "list unwind from hash:\n", @array, "\n\n";