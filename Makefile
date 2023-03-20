ifndef PREFIX
	PREFIX = /usr/local
endif

install:
	install -Dm755 shstatus $(DESTDIR)$(PREFIX)/bin/shstatus
	install -Dm644 config.sh $(DESTDIR)/etc/shstatus/config.sh

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/shstatus
	rm -f $(DESTDIR)/etc/shstatus/config.sh

.PHONY: install uninstall
