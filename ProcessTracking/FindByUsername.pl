#!/usr/bin/perl

use strict;
use warnings;

print "\n Enter a username from the list:\n \n";
system('cut -d: -f1 /etc/passwd');

my $user=<STDIN>;
system('ps -ef | grep $user');
