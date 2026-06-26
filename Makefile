# dateTimeSetter Makefile

PREFIX ?= $(HOME)/.local

install:
	mkdir -p $(PREFIX)/bin
	mkdir -p $(PREFIX)/share/applications
	install -Dm755 dateTimeSetter $(PREFIX)/bin/dateTimeSetter
	install -Dm644 dateTimeSetter.desktop $(PREFIX)/share/applications/dateTimeSetter.desktop

remove:
	rm -f $(PREFIX)/bin/dateTimeSetter
	rm -f $(PREFIX)/share/applications/dateTimeSetter.desktop

.PHONY: install remove
