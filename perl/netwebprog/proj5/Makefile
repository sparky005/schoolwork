#
# CISC 3300 Final Project: Arithmetic Drilling
# Author:    A. G. Werschulz
# Date:      27 April 2011

# Makefile

# Names of CGI scripts, and where they go
PROGS=question answer
CGIHOME=${HOME}/public_html/cgi-bin/netwebprog/final

install: $(PROGS) 
	[ ! -d $(CGIHOME) ] || mkdir -p $(CGIHOME)
	cp --preserve $(PROGS) $(CGIHOME)

check: $(PROGS)
	perl -wcT question
	perl -wcT answer

clean:	
	/bin/rm -f *~ core.* *.bak \#*\#

