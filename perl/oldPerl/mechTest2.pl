#!/usr/bin/perl
use WWW::Mechanize;
my $m = WWW::Mechanize->new();
#$url = 'http://www.google.com';
#$m -> get($url);
#$m->form_name('f');
#$m->field('q', 'test search');
#$response = $m->submit();
#print $response->content();
#$link = $m->find_link(text=>'
$url = 'http://www.phpied.com/files/form-complete/autofill.html';

$m -> get($url);
my $y = $m->content(format=>'text');
print $y, '\n';
print $m->content();