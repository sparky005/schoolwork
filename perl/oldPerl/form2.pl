#!/usr/bin/perl

#for web interfacing
use WWW::Mechanize;

#set vars
my @classes = ("class1", "class2", "class3", "class4", "class5", "class6", "class7", "class8", "class9", "class10");

my $name = 'CRN_IN'; #name of fields

#create mech
my $mech = WWW::Mechanize->new(autocheck =>1);

#set URL
my $url = 'http://localhost:8888/formTest/register.html';
#fetch URL
$mech->get($url);

#fill out form
#using items specified in class array
$mech->form_number(2);
for(my $i = 0; $i<10; $i++)
{
	#print $i . "\n";
	my $j = $i+1;
	print $j . "\n";
	$mech->field($name, @class[$i]);
}
$mech->click_button(number=>1);
#print $mech->content();