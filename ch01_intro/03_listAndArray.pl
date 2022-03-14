#!/usr/bin/perl

# reverse
@fred = 6..10;
print "@fred ";
@barney = reverse(@fred);
@wilma = reverse 6..10;
@fred = reverse @fred;