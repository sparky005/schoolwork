#!/usr/bin/perl

use strict;
my @a = ("input", "INPUT TYPE=\"text\"");
#my @b = ();
my $url = "file:///Users/adilsadik/Downloads/bwskfreg.P_AltPin.html";
my $sysstring = "curl -s $url";
my $count = 1;

print "Opening...\n";
open(FOO, "$sysstring|");
print "Searching...\n";
while(<FOO>)
{
	my $lineout = $_;
	#print "$lineout";
	foreach my $search (@a)
	{
		if($lineout =~ /$search/)
		{
			print "$count. $search found.\n";
			$count++;
		}
	}
}