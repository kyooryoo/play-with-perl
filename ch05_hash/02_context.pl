#!/usr/bin/perl -w

%hash = (
    "foo" => 35, 
    "bar" => 12.4, 
    2.5 => "hello", 
    "Wilma" => 1.72e30, 
    "betty" => "bye\n",
);

# in scalar context, keys and values reutrn numbers of items
my $count = keys %hash;
print "there are $count items in the \%hash.\n";

# in boolean context, not empty %hash returns true
if (%hash) {
    print "The sample hash is not empty!\n";
}
%hash = ();
if (%hash) {
    print "The sample hash is not empty!\n";
} else {
    print "The sample hash is empty now!\n";
}

# unwind hash to list is also a context based operation