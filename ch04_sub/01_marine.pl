#!/usr/bin/perl

# define a subroutine called marine
sub marine {
    $n += 1; # global var
    print "Hello, sailor number $n!\n";
}

# call the subroutine four times
&marine;
&marine;
&marine;
&marine;