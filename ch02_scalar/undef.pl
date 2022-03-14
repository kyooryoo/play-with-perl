#!/usr/bin/perl

# adding string to undefined var creates string
print "undefined var has value: $string\n";
if (defined($string)) {
    print "the var does not have undef value at present!\n\n";
} else {
    print "the var has undef value at present\n\n";
}
$string .= "some text";
print "current var value is: $string\n";
if (defined($string)) {
    print "the var does not have undef value at present!\n\n";
} else {
    print "the var has undef value at present\n\n";
}

# adding number to undefined var creates number
$n = 1;
while ($n < 10) {
    $sum += $n;
    $n +=2;
}
print "The total was $sum.\n";

# create a variable with the value of undef
$undef = undef;
print "the value of undef is: $undef\n";

