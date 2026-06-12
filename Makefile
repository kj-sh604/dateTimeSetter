# dateTimeSetter Makefile

PREFIX ?= $(HOME)/.local

install:
	mkdir -p $(PREFIX)/bin
	install -Dm755 dateTimeSetter $(PREFIX)/bin/dateTimeSetter

remove:
	rm -f $(PREFIX)/bin/dateTimeSetter

.PHONY: install remove
