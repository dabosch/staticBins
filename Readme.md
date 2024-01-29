# Setup for compiling statically linked binaries for usefull linux tools

There are a few tools that I need to use on machines where I can't install software.

This repo contains a setup to compile those tools so they can be used on most machines.
Compilation will be done inside an apptainer container, that contains all necessary build dependencies.

## How to compile
Compilation requires apptainer to be installed. This is not needed for executing the binaries!
- clone this git repo and cd into it
- for building a single application, type e.g. `make nano`
- you can also build all with `make all`

## List of tools
| tool | version |
|------|--------:|
| btop | 1.3.0   |
| htop | 3.3.0   |
| nano | 7.2     |
| ncdu | 2.3     |
| nnn  | 4.9     |
| pigz | 2.8     |
| pv   | 1.8.5   |
| tree | 2.1.1   |

