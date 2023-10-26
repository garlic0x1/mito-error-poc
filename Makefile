# Dependencies:
#  * SBCL
#  * Quicklisp
#
# Author: garlic0x1

INSTALL_DIRECTORY = ~/.local/bin
LISP ?= sbcl

default: reinstall

prepare:
	touch ~/.cache/mito_error_poc.sqlite3

build: prepare
	$(LISP) --load build.lisp

install: build
	mv mito-error-poc $(INSTALL_DIRECTORY)/mito-error-poc

clean:
	rm ~/.cache/mito_error_poc.sqlite3
	rm $(INSTALL_DIRECTORY)/mito-error-poc

reinstall: clean install
