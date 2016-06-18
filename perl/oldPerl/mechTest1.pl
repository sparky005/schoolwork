#!/usr/bin/perl
use WWW::Mechanize;
my $m = WWW::Mechanize->new();
$url = 'http://www.google.com';
$m->get($url);
$link = $m->find_link(text=>'Advanced Search');
$url = $link->url();
print "The Gooogle advanced search URL is: $url\n";

