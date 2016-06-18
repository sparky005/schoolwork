#
# CISC 3300 Project #2: Frank's Eclectic Grocery
# Author:    A. G. Werschulz
# Date:      22 February 2011

# Makefile

PROGS=form process
CGIHOME=${HOME}/public_html/cgi-bin/netwebprog/proj2

install: $(PROGS)
	mkdir -p $(CGIHOME)
	cp --preserve $(PROGS) $(CGIHOME)

check: $(PROGS)
	perl -wcT form
	perl -wcT process

clean:	
	/bin/rm -f *~ core.* *.bak \#*\#
