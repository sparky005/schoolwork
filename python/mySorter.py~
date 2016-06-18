import sys

######################################################################
#
# Author: Adil Sadik
# Simple python assignment: sort strings
# This program will take a list of strings entered by the user from
# the command line and sort them in alphabetical order
# Usage: 'python adilSorter.py <-r, --reverse> at least two strings'
#
######################################################################

#stores CL input into new array 'words'
#removes first element of input (script name)
words = sys.argv[1:]

#sorts user input
words.sort()

#error-checking
if(len(words)<2):
    print "Invalid command line arguments to program."
    print "Please supply two or more strings."
    sys.exit()

#print sorted list
for w in words:
    print w
