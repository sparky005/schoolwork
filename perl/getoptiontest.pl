#!/usr/bin/perl
use warnings;
use strict;
use Getopt::Long;

my $test;
GetOptions('test|t=s' => \$test);
print "$test\n";
