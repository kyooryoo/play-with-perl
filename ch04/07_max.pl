#!/usr/bin/perl -w

sub max {
    # first arg is returned in the following list context
    my ($a) = @_;
    print "the first input arg: $a\n";
    # all input args are turned in the following list context
    my @b = @_;
    print "the input args: @b\n";
    # number of args is returned in the following scalar context
    my $c = @_;
    print "number of input args: $c\n";

    # assume the first item is the maximum
    my($max_so_far) = shift @_;
    # loop through args and keep $max_so_far as the maximum
    foreach (@_) {
        if ($_ > $max_so_far) {
            $max_so_far = $_;
        }
    }
    # notice, $max_so_far is only available in this subroutine
    $max_so_far;
}

# no matter how many args, the maximum is always returned
$maximum = &max(3, 6, 10, 4, 7);
print "the max number is: $maximum\n";