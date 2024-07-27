export SHELL := bash
export RSYNC := rsync
export RSYNCFLAGS := -avrPh --delete --info=progress2 --exclude="Makefile"

.PHONY: all
all: elpa melpa

.PHONY: elpa
elpa:
	$(MAKE) -C elpa/ packages

.PHONY: melpa
melpa:
	$(MAKE) -C melpa/ packages

.PHONY: nongnu
nongnu:
	$(MAKE) -C nongnu/ packages


