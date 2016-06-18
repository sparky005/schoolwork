#!/usr/bin/perl


use WWW::Mechanize;
use Email::Address

#url to parse
$url = 'http://www.arttable.org/index.cfm?pageId=482';

#create new mech
my $mech = WWW::Mechanize->new(autocheck=>1);

#retrieve page
$mech -> get($url);

#authentication information
$username = lfreeman;
$password = HKN137;

#assign content to $page
#my $page = $mech -> content;

#output page
#print $page;

#log in
$mech -> field('username', $username);
$mech -> field('userPassword', $password);
$mech->submit();

#go to the search page
$mech->follow_link(text => 'Search the Member Directory');
#submit blank query to search page
#to get all members
$mech->submit();
#show all members
$mech->follow_link(text => 'Show All');

#open(FH, ">art.html");

#print FH $mech->content;
#close(FH);

#get all links on page
#for each link in page, search for email
#output email to file
#go back, repeat until all links have been read

@links = $mech->find_all_links();
$size = @links;
print $size;
#open(FH,">>addys.txt");
#maybe instead add everything to an array
#and then output the array
#for($i=1330; $i<$size;$i++) {
#    $mech->get(@links[$i]->url());
#    $page = $mech->content;
#    @addresses = Email::Address->parse($page);
#    print FH @addresses;
#    $mech->back;
#}
#close(FH);
open(FH, ">addys.txt");
$|++;
for($i=0;$i<$size;$i++) {

    $mech->get(@links[$i]->url());
    #$page = $mech->content;

#print $page;
    #my @addresses = Email::Address->parse($page);
#open(FH, ">addys.txt");
    #print FH @addresses;
    #print FH Email::Address->parse($page);
    print FH Email::Address->parse($mech->content);
    print FH "\n";
    #close(FH);
    $mech->back;
}
close(FH);
#if(){
#    print "yes";
#}
#for($i=0; $i<$size; $i++) {
#print @links[i]->url();
#print "\n";
#    $mech->get(@links[i]->url());
#    print $mech->content;
#}
