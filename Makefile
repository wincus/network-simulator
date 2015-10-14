AUTHOR=jmoyano
DEFS=redes-practico-5

install:
		./setup.sh

start:
		sudo vnx -f $(DEFS).xml --create

stop:
		sudo vnx -f $(DEFS).xml --destroy

map:
		sudo vnx -f $(DEFS).xml --show-map

.PHONY: start stop map install

