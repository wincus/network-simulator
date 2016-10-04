# Simulador de Redes
Instala y configura una pequeña red para prácticas de laboratorio.

![Network](red.png?raw=True)

## Instalación en Bare Metal

### Requisitos
  - Ubuntu 14.04

### Pasos de Instalación
  - Instalar git y make:

```bash
$ sudo apt-get update
$ sudo apt-get install git build-essential
```
  - Clonar el repositorio:
  
```bash
$ git clone https://github.com/wincus/network-simulator.git
$ cd network-simulator
```
  - Para Instalar ejecute:

```bash
$ make install
```

  - Para Iniciar la simulación ejecute:

```bash
$ make start
```

  - Para generar un mapa de la red, ejecute:

```bash
$ make map
```

## Instalación en ambientes virtualizados

### Requisitos

  - [Vagrant](https://www.vagrantup.com/downloads.html)
  - git

### Pasos de Instalación
  - Clonar el repositorio:
  
```bash
$ git clone https://github.com/wincus/network-simulator.git
$ cd network-simulator
```
  - Inicio de la máquina virtual:

```bash
$ vargant up
```

  - Iniciar la simulación

```bash
$ vagrant ssh
$> cd network-simulator && make start
```
