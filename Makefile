SHELL := /bin/bash
.ONESHELL:

BIN := $$HOME/.local/bin
DATA := $${XDG_DATA_HOME:-$$HOME/.local/share}

.PHONY: install
install:
	mkdir -p $(DATA)/odbc-use
	mkdir -p $(BIN)
	cp ./odbc-use $(BIN)
	mkdir -p $(DATA)/bash-completion/completions
	cp bash_completion $(DATA)/bash-completion/completions/odbc-use

.PHONY: uninstall
uninstall:
	rm -f $(BIN)/odbc-use
	rm -rf $(CONFIG)/odbc-use
	rm -f $(DATA)/bash-completion/completions/odbc-use
