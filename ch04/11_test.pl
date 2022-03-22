#!/usr/bin/perl -w

my @list = qw- 1 3 5 7 9 -;
my $list_total = &total(@list);
print "The total of \@list is $list_total.\n";

print "Enter some numbers on seperate lines:\n";
my $user_total = &total(<STDIN>);
print "The total of those numbers is $user_total.\n";

my $sum1k = &total(1..1000);
print "The total of 1 to 1000 is $sum1k.\n";

sub total {
    $result = 0;
    foreach (@_) {
        $result += $_;
    }
    $result
}