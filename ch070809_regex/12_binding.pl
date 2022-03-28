#!/usr/bin/perl -w

# specify a var for matching target
print "\ntest binding with =~:\n";
my $target = "I dream of betty rubble.";
if ($target =~ /\bRUB/i) {
    print "Aye, there's the rub.\n";
}

# read, match, and drop input value
print "\nDo you like Perl?\n";
my $likes_perl = (<STDIN> =~ /\bYES\b/i);
if ($likes_perl) {
    print "Glad you like it, me too!\n";
} else {
    print "Give it some time to learn.\n";
}