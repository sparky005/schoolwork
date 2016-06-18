#!/usr/bin/perl
use strict;
use warnings;
#use Fcntl qw(:flock :seek);

######################################################################
#
#Author: Adil Sadik
#Moderately Complex perl assignment: converting temperatures
#
#This program will take a list of temperatures/units, delimited by the '|'
#character, and convert them to the opposite unit, outputting the 
#converted temperatures into a new file.
#
#######################################################################


#get file
#store in @temps
open IN, "temps.txt";
my @temps = <IN>;
close IN;
open OUT, "> newtemps.txt";
#print "@temps"; #for debugging
foreach my $line (@temps) {
    chomp($line);
    print "$line\n";
    my ($value, $unit) = split(/\|/,$line);
    #print "$value, $unit\n"; #for debugging
    if($unit eq 'F' || $unit eq 'f') {
	conv_from_f($value);
    }
    if($unit eq 'C' || $unit eq 'c') {
	conv_from_c($value);
    }
}

sub conv_from_f {
    my $oldtemp = $_[0];
    print "oldtemp = $oldtemp\n"; #for debugging
    my $newtemp = (5.0/9.0)*($oldtemp-32);
    print OUT "$newtemp|C\n";
}

sub conv_from_c {
    my $oldtemp = $_[0];
    print "oldtemp = $oldtemp\n"; #for debugging
    my $newtemp = ((9.0/5.0)*$oldtemp)+32;
    print OUT "$newtemp|F\n";
}
close OUT;
