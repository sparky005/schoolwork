#!/usr/bin/perl
use warnings;
use strict;
use Fcntl qw(:flock :seek);

open IN, "test.txt";
my @test = <IN>;
close IN;
print @test;
open(OUT, "> test.txt");
print OUT "this is a test.";
close(OUT);

