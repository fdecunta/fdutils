PREFIX=/usr/local

install: org2csv dmenu_papers
	cp dmenu_papers $(PREFIX)/bin/
	chmod 755 $(PREFIX)/bin/dmenu_papers
	cp org2csv $(PREFIX)/bin/
	chmod 755 $(PREFIX)/bin/org2csv

.PHONY: install 
