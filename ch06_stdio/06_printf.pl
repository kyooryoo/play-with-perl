#!/usr/bin/perl -w

print "\na simple example with \%s and \%d:\n";
$user = "fred";
$days = 15.7; # notice 0.7 will be dropped
printf "Hello %s, your password will expire in %d days.\n", $user, $days;

print "\nsamples with \%g \%d \%s and \%f:\n";
printf "%%g: %g | %g | %g\n", 5, 51/7, 51*7;
printf "%%d: patron ID is %8d\n", 42; # extra prefix space will be added
# exact number will extend the definition of %2d
printf "%%d: patron ID is %2d\n", 10_000_042;
printf "%%s: username is %15s - %15s\n", "wilma", "flintstone";
# in the following sample negative number will push string to left
printf "%%s: username is %-15s - %15s\n", "wilma", "flintstone";
printf "%%f: paid \$%.2f with rate %.2f%%\n", 56.456, 1.725;

# a demo of print a list with dynamically generated format
my @items = qw\ wilma dino pebbles \;
# notice @items returns the number of items in scalar context
# this generates format definition dynamically per list content
print "\nthe original items are: @items\n";
my $format = "The formated items are: \n" . ("%10s\n" x @items);
print "the format definition is:\n<<<\n$format\n>>>\n";
printf $format, @items;