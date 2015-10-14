AUTHOR=jmoyano
DEFS=redes-practico-5
INET_IFACE=eth0

install:
		./setup.sh

start:
		sudo vnx -f $(DEFS).xml --create
		sudo iptables -I POSTROUTING -t nat -o $(INET_IFACE) -j MASQUERADE

stop:
		sudo vnx -f $(DEFS).xml --destroy
		sudo iptables -D POSTROUTING -t nat -o $(INET_IFACE) -j MASQUERADE

map:
		sudo vnx -f $(DEFS).xml --show-map

status:
		sudo vnx -f $(DEFS).xml --show-status

.PHONY: start stop map install status

