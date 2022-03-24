#!/usr/bin/perl -w
use List::Util 'shuffle';

# & prefix is optional in the following cases
my @list = qw( a b c d e f g);
print "original list: @list\n";
# shuffle is a subroutine from system library
@list = shuffle(@list);
print "updated list: @list\n\n";

# compiler see the subroutine definition first
sub division {
    $_[0] / $_[1];
}
my $quotient = division 355, 133;
print "355 / 133 = $quotient\n\n";


# & prefix is NOT optional in the following case
sub chomp {
    print "Munch, munch!";
}
# since this subroutine name doubles system one
&chomp

