#!/usr/bin/perl
use WWW::Mechanize;

my $mech = WWW::Mechanize->new(autocheck => 1);

my $url = 'http://www.gmail.com';

my $page = $mech->get($url);

my $email = 'sparky.005@gmail.com';
my $passworld = 'strikenow!!!';