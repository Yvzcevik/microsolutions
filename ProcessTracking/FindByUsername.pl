# This code has 3 steps as follows:
#   1-) Listing all usernames in a local machine.
#   2-) Choosing a user by taking an input from user.
#   3-) Listing all processes run by choosed user.

#!/usr/bin/perl

use strict;
use warnings;

print "\n Enter a username from the list:\n \n";
system('cut -d: -f1 /etc/passwd');

my $user=<STDIN>;
system('ps -ef | grep $user');
