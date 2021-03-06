#!/usr/bin/perl
use warnings;
use strict;
######################################################################
#
# Author: Adil Sadik
# Simple Perl assignment: sort strings
# 
# This program will take a list of strings entered by the user from
# the command line and sort them in alphabetical order
# Usage: 'perl mySorter.pl at least two strings'
#
# An option will later be added to sort reverse-alphabetically
# 
# also maybe add ability to read in via file?
######################################################################


my @words = sort @ARGV;
if(@words<2) {
    print "Invalid command line arguments to program.\n";
    print "Please supply two or more strings.\n";
}
for my $word (@words) {
    print $word . "\n";
}
#print "@words\n";
