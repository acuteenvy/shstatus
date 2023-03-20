ifndef PREFIX
	PREFIX = /usr/local
endif
ifndef MANPREFIX
	MANPREFIX = $(PREFIX)/share/man
endif

install:
	install -Dm755 shstatus $(DESTDIR)$(PREFIX)/bin/shstatus
	install -Dm644 config.sh $(DESTDIR)/etc/shstatus/config.sh
	install -Dm644 shstatus.1 $(DESTDIR)$(MANPREFIX)/man1/shstatus.1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/shstatus
	rm -f $(DESTDIR)/etc/shstatus/config.sh
	rm -f $(DESTDIR)$(MANPREFIX)/man1/shstatus.1

.PHONY: install uninstall
