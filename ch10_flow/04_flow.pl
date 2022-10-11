#!/usr/bin/perl -w

# demo last, nexe, and redo
print "\ndemo last, input something or '__end__':\n";
while (<STDIN>) {
    if (/__END__/i) {
        print "goodbye!\n";
        last;
    } elsif (/fred/i) {
        print;
    } else {
        print "try again!\n";
    }
}

print "\ndemo next, input something:\n";
LINE: while (<STDIN>) {
    chomp;
    foreach (split) { # split input and assign to $_
        last LINE if /__end__/i;
        $total++; # count each $_
        next unless /[\w]+\W?[\w]*/; # next loop if $_ is special char
        $valid++; # count valid word in total
        s/\W//; # remove special chars
        s/([\w]+)/\L$1/i; # convert word chars into lower case
        $count{$_}++ # count specific valid word
    }
}
if ($total) {
    print "\ntotal things = $total, valid words = $valid\n";
    foreach $word (sort keys %count) {
        print "$word was seen $count{$word} times.\n";
    }
}


print "\ndemo redo, type the word you see:\n";
my @words = qw| fred barney pebbles dino wilma betty |;
my $errors = 0;
foreach (@words) {
    # redo will come back till here
    print "type the word '$_': ";
    chomp(my $input = <STDIN>);
    last if ($input =~/__end__/i);
    if ($input ne $_) {
        print "sorry - that's not right.\n\n";
        $errors++;
        redo;
    }
}
print "\ntest completed with $errors errors.\n";

# test last, next, and redo all together
print "\ntest last, next, and redo all together:\n";
foreach (1..10) {
    print "iteration number - $_\n";
    print "input: last, next, redo, or else: ";
    chomp(my $choice = <STDIN>);
    print "\n";
    last if $choice =~ /last/i;
    next if $choice =~ /next/i;
    redo if $choice =~ /redo/i;
    print "that wasn't any of the choice... onward!\n";
}
print "that's all, folks!\n";

# use all upper case for label in code such as - LABEL:
# best practice is giving labels comprehensive names
print "\ninput more than one word to test.\n";
print "mixin '__end__' or '_end_' to X the Ex or In loop.\n";
LINE: while (<>) { # LINE labels the process per line
    chomp;
    print "External loop of: $_\n";
WORD: foreach (split) { # WORD labels the process per word
        print "Internal loop of: $_\n";
        last LINE if /__end__/; # jump out the whole loop
        last WORD if /_end_/; # jump out current loop
    }
}