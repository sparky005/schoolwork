#!/usr/bin/perl

#outputting page links...

#include WWW::Mechanize
use WWW::Mechanize;

#url
$url = 'file:///Users/adilsadik/perl/bestselling.html';

#create new mech
my $mech = WWW::Mechanize->new(autocheck =>1);

#retrieve the page
$mech->get($url);

#retreive page title
my $title = $mech->title;

print "<b>$title</b><br /> \n";

#place all links in an array
my @links = $mech->links;

#look through and output each link
foreach my $link (@links)
{
	#retrieve link URL
	my $href = $link->url;
	
	#retrieve link text
	my $name = $link->text;
	
	print "<a href=\"$href\"> $name</a>\n";
}