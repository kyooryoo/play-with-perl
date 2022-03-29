#!/usr/bin/perl -w

print "guess an integer number between 1 and 100\n";
my $secret = int(1 + rand 100);
print $secret, "\n";
while (1) {
    print "input your guess: ";
    my $input = <STDIN>;
    if ($input =~ /^[quit|exit|\s]/is) {
        print "goodbye, come back again!\n";
        last;
    } elsif ($input > $secret) {
        print "too high, try again!\n\n";
    } elsif ($input < $secret) {
        print "too low, try again!\n\n";
    } else {
        print "congrats, you win!\n";
        last;
    }
}
