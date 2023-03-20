PREFIX ?= /usr/local
MANPREFIX ?= $(PREFIX)/share/man

help:
	@echo "Run 'make install' to install shstatus or 'make uninstall' to uninstall it."

install:
	install -Dm755 shstatus $(DESTDIR)$(PREFIX)/bin/shstatus
	install -Dm644 config.sh $(DESTDIR)/etc/shstatus/config.sh
	install -Dm644 shstatus.1 $(DESTDIR)$(MANPREFIX)/man1/shstatus.1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/shstatus
	rm -f $(DESTDIR)/etc/shstatus/config.sh
	rm -f $(DESTDIR)$(MANPREFIX)/man1/shstatus.1

.PHONY: help install uninstall
