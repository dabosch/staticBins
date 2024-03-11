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
| [btop][btop] | 1.3.0   |
| [fzf][fzf]   | 0.47.0  |
| [htop][htop] | 3.3.0   |
| [nano][nano] | 7.2     |
| [ncdu][ncdu] | 2.3     |
| [nmon][nmon] | 16p     |
| [nnn][nnn]   | 4.9     |
| [pigz][pigz] | 2.8     |
| [pv][pv]     | 1.8.5   |
| [tree][tree] | 2.1.1   |


[btop]:https://github.com/aristocratos/btop
[htop]:https://htop.dev/
[nano]:https://www.nano-editor.org/
[ncdu]:https://dev.yorhel.nl/ncdu
[nmon]:https://nmon.sourceforge.io/pmwiki.php
[nnn]:https://github.com/jarun/nnn
[pigz]:https://zlib.net/pigz/
[pv]:http://www.ivarch.com/programs/pv.shtml
[tree]:http://oldmanprogrammer.net/source.php?dir=projects/tree
[fzf]:https://github.com/junegunn/fzf.git
