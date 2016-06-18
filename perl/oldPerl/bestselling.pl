#!/usr/bin/perl

##this script will look at a page
##scrape the HTML
##output it to terminal
##and save the HTML to a file

#include WWW::Mechanize
use WWW::Mechanize;

#url to retrieve
$url = 'file:///Users/adilsadik/perl/bestselling.html';

#create new mech
#enable autocheck
#autocheck returns error if connection fails
my $mech = WWW::Mechanize->new(autocheck => 1);

#retrieve page
$mech->get($url);
@links = $mech->find_all_links();
$size = @links;
for($i = 0; $i<$size; $i++){
print @links[i]->url();
print "\n";
}
#assign content to $page
my $page = $mech->content;

#output page
print $page;

#save page locally
open(FH, ">bestsellers.txt");

print FH $page;

close(FH);
