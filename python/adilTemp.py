#!/usr/bin/python2
import sys

######################################################################
#
# Author: Adil Sadik
# Moderately complex python assignment: converting temperatures
#
# This program will take a list of temperatures/units delimited by the '|'
# character, and convert them to the opposite unit, outputting 
# the converted temperatures into a new file
######################################################################

# subroutines
def conv_from_f(value):
    newtemp = (5.0/9.0)*(int(value)-32)
    OUT.write(str(newtemp))
    OUT.write("|C")
    OUT.write("\n")

def conv_from_c(value):
    newtemp = (((9.0/5.0)*int(value))+32)
    OUT.write(str(newtemp))
    OUT.write("|F")
    OUT.write("\n")

#ask user for file name
print "Please enter the name of your input file."
print "Ex: temps.txt"

#get file name
infile = sys.stdin.readline()

print "Please enter the name of your output file."
outfile = sys.stdin.readline()

#strip newlines of input filenames
infile = infile.rstrip()
outfile = outfile.rstrip()

#open file
#if file does not exist, die
try:
    IN = open(infile)
except IOError:
    print "Couldn't open file",infile,"for reading."
    exit()

#store file contents
oldTemps = IN.readlines()
IN.close

#open output file for converted temps
OUT = open(outfile, "w")
line = 0 #will be used for error-handling
for temps in oldTemps:
    line = line+1
    temps = temps.rstrip()
    index = temps.index('|')
    #pull out temp and unit separately
    value = temps[:index]
    unit = temps[(index+1):]
    try:
        value = int(value)
    except:
        print "Invalid input temp on line",line
    else:
        if((unit is 'F') or (unit is 'f')):
            conv_from_f(value)
        elif((unit is 'C') or (unit is 'c')):
            conv_from_c(value)
        else:
            print "Invalid input on line",line
