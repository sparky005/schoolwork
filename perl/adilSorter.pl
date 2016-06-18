#!/usr/bin/perl
use warnings;
use strict;
use Getopt::Long;
######################################################################
#
# Author: Adil Sadik
# Simple Perl assignment: sort strings
# 
# This program will take a list of strings entered by the user from
# the command line and sort them in alphabetical order
# Usage: 'perl adilSorter.pl <-r, --reverse>  at least two strings'
#
######################################################################

my $reverse;
GetOptions ('reverse|r' => \$reverse); # allows for command-line options

#sort the array
my @words = sort @ARGV;

#error-checking
if(@words<2) {
    print "Invalid command line arguments to program.\n";
    print "Please supply two or more strings.\n";
}

#see if 'reverse' option was called
#if it was, reverse-sort the array
if ($reverse) {
    @words = reverse(@words);
}

#print sorted array elements.
for my $word (@words) {
    print $word . "\n";
}
