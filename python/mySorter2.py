import sys
import argparse

######################################################################
#
# Author: Adil Sadik
# Simple python assignment: sort strings
# This program will take a list of strings entered by the user from
# the command line and sort them in alphabetical order
# Usage: 'python adilSorter.py <-r, --reverse> at least two strings'
#
######################################################################

#processes user input
#stores user inputted words
parser = argparse.ArgumentParser()
parser.add_argument("words", nargs='*', help="Stores two or more user-inputed words")

#finds out if the user wants their list reversed
#upon output
parser.add_argument("-r", "--reverse", help="Reverse the sorted array", action = "store_true")
args = parser.parse_args()

#store array in new array
words = args.words[:]

#sorts user input
words.sort()

#reverses sorted array
# if user specified -r flag
if args.reverse:
    words.reverse()

#error-checking
if(len(words)<2):
    print "Invalid command line arguments to program."
    print "Please supply two or more strings."
    sys.exit()

#print sorted list
for w in words:
    print w
