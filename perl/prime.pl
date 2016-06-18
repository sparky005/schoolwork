#!/usr/bin/perl
use warnings;
use strict;

#takes a number from user input
#outputs a list of prime numbers from 2 to that number

print "Please enter a number ";
my $number = <STDIN>;
my @primes = (2..$number);
print "You entered $number";
my $primeness = 1;

#@primes = (2..$number);
#foreach(@numbers) {

sub isPrime {
    my $test = $_;
    my $i = 2;
    my $isPrime = 1;
    while($i<=$test) {
	#$i++;
	#print $i . "\n";
	#print $test%$i;
	#print "not prime" if($test%$i == 0);
	$isPrime = 0 if($test % $i == 0);
	$i++;
    }
    if(!$isPrime) {
	shift(@primes);
    }
}

print "before @primes";
#test isPrime
foreach(@primes) {
    isPrime($_);
}
#isPrime(18);
print "@primes";
