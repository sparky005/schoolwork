#!usr/bin/perl
use WWW::Mechanize;
my $m = WWW::Mechanize->new();
$url = 'http://www.google.com';
$m->get($url);
$link = $m->find_link(text=>'Advanced Search');
$m->get($url . $link);
$m->form_name('f');
$m->set_fields('as_q'=? 'test search', 'as_eq'=> 'exclude');
$m->select('num', '20');