AUTHOR=jmoyano
DEFS=redes-practico5

install:
	./setup.sh

start: rules
	vnx $(DEFS).xml --create

stop:
	vnx -f $(DEFS).xml --destroy

map:
	vnx -f $(DEFS).xml --show-map

.PHONY: start stop map
