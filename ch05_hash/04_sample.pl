#!/usr/bin/perl -w

# a sample program for managing patron fulfillment
$books{"fred"} = 3; # patron has active loan
$books{"wilma"} = 1;
$books{"barney"} = 0; # patron does not have loan
$books{"pebbles"} = undef; # patron does not have card

# check has item value for workflow purpose
print "checking active loans:\n";
foreach $person (sort keys %books) {
    if ($books{$person}) {
        print "$person has at least one active loan!\n";        
    } else {
        print "$person does NOT have active loan!\n";
    }
}

# use exists function to check if a has value exists
print "\nchecking active library card:\n";
foreach $person (sort keys %books) {
    if (exists $books{$person}) {
        print "$person is a registered patron!\n";
    } else {
        print "$person is not a registered patron!\n";
    }
}
# check one not existing patron on purpose
my $person = "betty";
if (exists $books{$person}) {
    print "$person is a registered patron!\n";
} else {
    print "$person is NOT a registered patron!\n";
}

# delete one hash item
$person = "barney";
delete $books{$person};

print "\nafter deleting barney:\n";
foreach $person (sort keys %books) {
    if ($books{$person}) {
        print "$person has $books{$person} items.\n";
    } else {
        print "$person has no items.\n";
    }
}