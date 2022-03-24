#!/usr/bin/perl -w

my @names = qw% fred barney dino wilma pebbles bamm-bamm %;
my $result = &which_element_is("dino", @names);
print "content of \@names: @names\n";
print "dino is in \@names at index $result\n";

sub which_element_is {
    my($what, @list) = @_;
    # notice $#list is the last item index in list
    foreach (0..$#list) {
        if ($what eq $list[$_]) {
            # return here is necessary
            return $_;
        }
    }
    # return here could be optional
    -1;
}