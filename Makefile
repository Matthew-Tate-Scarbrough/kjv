PREFIX = /usr/local

lut: lut.sh lut.awk lut.tsv
	cat lut.sh > $@
	echo 'exit 0' >> $@
	echo '#EOF' >> $@
	tar cz lut.awk lut.tsv >> $@
	chmod +x $@

test: lut.sh
	shellcheck -s sh lut.sh

clean:
	rm -f lut

install: lut
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f lut $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/lut

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/lut

.PHONY: test clean install uninstall
