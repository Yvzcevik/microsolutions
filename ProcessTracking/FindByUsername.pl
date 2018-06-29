# This code has 3 steps as follows:
#   1-) Listing all usernames in a local machine.
#   2-) Choosing a user by taking an input from user.
#   3-) Listing all processes run by choosed user.

#!/usr/bin/perl

use strict;
use warnings;

print<<EOF;
\n
Choose Machine:
(1) for Local Machine
(2) for Remote Machine
EOF
my $machine=<STDIN>;
if ($machine=='2'){
  print "Enter IP Address\n";
  my $remoteIp=<STDIN>;
  print "Enter Username\n";
  my $remoteUsername=<STDIN>;
  system('ssh $remoteIp -l $remoteUsername');
  
print "\n Enter a username from the list:\n \n";
system('cut -d: -f1 /etc/passwd');

my $user=<STDIN>;
system('ps -ef | grep $user');
