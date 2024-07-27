export SHELL := bash
export RSYNC := rsync
export RSYNCFLAGS := -avrPh --delete --info=progress2 --exclude="Makefile"
export DOCKER := sudo docker

.PHONY: all
all: elpa melpa nongnu

.PHONY: elpa
elpa:
	$(MAKE) -C elpa/ packages

.PHONY: melpa
melpa:
	$(MAKE) -C melpa/ packages

.PHONY: nongnu
nongnu:
	$(MAKE) -C nongnu/ packages

.PHONY: docker
docker: Dockerfile
	$(DOCKER) build -t eiab:latest .
