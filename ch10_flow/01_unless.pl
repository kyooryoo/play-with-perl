#!/usr/bin/perl -w

# unless works in a reversed way of if
# verify if input is a valid Perl id name
print "input a Perl ID to see if it is valid:\n";
while (<STDIN>) {
    chomp;
    unless ($_ =~ /^[A-Za-z_]\w*$/i) {
        print "$_ is NOT a valid Perl ID name.\n";
    } else {
        print "$_ is a valid Perl ID name.\n";
    }
}

# the above code works similarly as follows
print "\nfollowing code use if/else method:\n";
while (<STDIN>) {
    chomp;
    if (!($_ =~ /^[A-Za-z_]\w*$/i)) {
        print "$_ is a NOT valid Perl ID name.\n";
    } else {
        print "$_ is a valid Perl ID name.\n";
    }
}

# until works in a reversed way of while
print "\ndouble x until it is greater than y!\n";
print "input x: ";
chomp($x = <STDIN>);
print "input y: ";
chomp($y = <STDIN>);
until ($x > $y) {
    $x *= 2;
}
print "now we have x with value $x\n";

# similar to case and switch you can use elsif
print "\ninput something to check: ";
chomp($dino = <STDIN>);
if (!defined $dino) {
    print "the value is undef.\n";
} elsif ($dino =~ /^-?\d+\.?$/) {
    print "the value is an integer.\n";
} elsif ($dino =~ /^-?\d*\.\d+$/) {
    print "the value is a _simple_ floating-point number.\n";
} elsif ($dino eq ' ') {
    print "the value is the empty string.\n";
} else {
    print "the value is the string '$dino'\n";
}