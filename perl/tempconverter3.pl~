#!/usr/bin/perl
use strict;
use warnings;

######################################################################
#
# Author: Adil Sadik
# Moderately Complex perl assignment: converting temperatures
#
# This program will take a list of temperatures/units, delimited by the '|'
# character, and convert them to the opposite unit, outputting the 
# converted temperatures into a new file.
#
#######################################################################


#ask user for file name
print "Please enter the name of your input file.\n";
print "Ex: temps.txt\n";

#get file name
my $file = <STDIN>;

print "Please enter the name of your output file.\n";
my $output = <STDIN>;

#open file
#if no such file exists, die with error
open IN, "$file"
    or die "Couldn't open file $file for reading: $!\n";

#store file contents
my @temps = <IN>;
close IN;

#open output file for converted temperatures
open OUT, "> $output";

#go through each temperature/unit combination
#process unit
#call appropriate subroutine for given unit
foreach my $line (@temps) {
    chomp($line);
    my ($value, $unit) = split(/\|/,$line);
    if($unit eq 'F' || $unit eq 'f') {
	conv_from_f($value);
    }
    if($unit eq 'C' || $unit eq 'c') {
	conv_from_c($value);
    }
}

close OUT;
print "Your converted temperatures have been stored in $output\n";

#    subroutines
######################################################################

#convert temps from F to C
#output to file
sub conv_from_f {
    my $oldtemp = $_[0];
    my $newtemp = (5.0/9.0)*($oldtemp-32);
    print OUT "$newtemp|C\n";
}

#convert temps from C to F
#output to file
sub conv_from_c {
    my $oldtemp = $_[0];
    my $newtemp = ((9.0/5.0)*$oldtemp)+32;
    print OUT "$newtemp|F\n";
}
