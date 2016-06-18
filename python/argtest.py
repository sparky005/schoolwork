import sys
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("words", nargs='+')
parser.add_argument("--verbosity", help="increase output verbosity", action="store_true")
args = parser.parse_args()
if args.verbosity:
    print "verbosity turned on"

for w in args.words:
    print w


'''
words = ['cat', 'window', 'apple', 'neptune']
words.sort()
for w in words:
    print w, len(w)
sys.argv.pop(0)
for r in sys.argv:
    print r, len(r)
print len(sys.argv)

'''
