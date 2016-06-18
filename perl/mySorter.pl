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
# Usage: 'perl a1.pl <list>'
#
# An option will later be added to sort reverse-alphabetically
# 
# also maybe add ability to read in via file?
######################################################################


my @words = sort @ARGV;
print "@words\n";
