#!/usr/bin/perl -w

%hash = (
    "foo" => 35, 
    "bar" => 12.4, 
    2.5 => "hello", 
    "Wilma" => 1.72e30, 
    "betty" => "bye\n",
);

# use each in while to loop through hash
print "loop through with while:\n";
while (($key, $value) = each %hash) {
    print "$key => $value\n";
}

# sort keys of a hash
@sorted_keys = sort keys %hash;
print "\nsorted keys of \%hash:\n@sorted_keys\n";

# or use foreach to loop through hash
print "\nloop through with foreach:\n";
foreach $key (sort keys %hash) {
    print "$key => $hash{$key}\n";
}