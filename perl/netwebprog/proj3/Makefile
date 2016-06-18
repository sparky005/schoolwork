#
# CISC 3300 Project #3:  The Ills Pierre BankCenter
# Author:    A. G. Werschulz
# Date:      23 Mar 2011

# Makefile

PROGS=response
CGIHOME=${HOME}/public_html/cgi-bin/netwebprog/proj3

install: $(PROGS)
	mkdir -p $(CGIHOME)
	cp --preserve $(PROGS) $(CGIHOME)

check: $(PROGS)
	perl -wcT response

clean:	
	/bin/rm -f *~ core.* *.bak \#*\#
