#
# CISC 3300 Project #4:  The Ills Pierre BankCenter (revised)
# Author:    A. G. Werschulz
# Date:      13 April 2011

# Makefile

PROGS=response
CGIHOME=${HOME}/public_html/cgi-bin/netwebprog/proj4

install: $(PROGS)
	mkdir -p $(CGIHOME)
	cp --preserve $(PROGS) $(CGIHOME)

check: $(PROGS)
	perl -wcT response

clean:	
	/bin/rm -f *~ core.* *.bak \#*\#
