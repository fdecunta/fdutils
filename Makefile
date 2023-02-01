PREFIX=/usr/local
MANPREFIX=$(PREFIX)/share/man

install: printcsv org2csv
	mkdir -p $(PREFIX)/bin
	cp printcsv $(PREFIX)/bin/
	chmod 755 $(PREFIX)/bin/printcsv
	mkdir -p $(MANPREFIX)/man1
	cp printcsv-man.man $(MANPREFIX)/man1/printcsv.1
	cp org2csv $(PREFIX)/bin/
	chmod 755 $(PREFIX)/bin/org2csv

uninstall:
	rm $(PREFIX)/bin/printcsv
	rm $(PREFIX)/bin/org2csv
	rm $(MANPREFIX)/man1/printcsv.1


.PHONY: install uninstall
