#!/usr/bin/perl

#attempt to submit information to a form
#will log URL of submit site to confirm
#submission

#use mech
use WWW::Mechanize;

#set random vars
my $name = 'Adil Sadik';
my $number = '9149440130';
my $pword = 'PASSWORD';

#create mech
my $mech = WWW::Mechanize->new(autocheck => 1);
#test form
my $url = 'http://localhost:8888/formTest/';
$mech->get($url);

#list forms
#print $mech->forms . "\n";
#fill out the form
$mech->forms(1);
$mech->field("name", $name);
$mech->field("number", $number);
$mech->field("pword", $pword);

#submit the form
$mech->click();
#print the content of the page
#to which the form submits
print $mech->content() . "\n";
$url = $mech->uri();
#print URL of the page
#if the form submits using a GET method
#we can verify that the perl script successfully navigated the form
#by checking the URL for our inputted data.
print $url . "\n";