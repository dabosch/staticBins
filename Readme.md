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
| [bat][bat]   | 0.24.0  |
| [btop][btop] | 1.3.0   |
| [eza][eza]   | 0.18.9  |
| [fzf][fzf]   | 0.47.0  |
| [gitui][gitui]  | 0.25.1   |
| [htop][htop] | 3.3.0   |
| [nano][nano] | 7.2     |
| [ncdu][ncdu]* | 2.3     |
| [nmon][nmon] | 16p     |
| [nnn][nnn]   | 4.9     |
| [pigz][pigz] | 2.8     |
| [pv][pv]     | 1.8.5   |
| [ripgrep][rg]| 14.1.0  |
| [tig][tig]   | 2.5.8   |
| [tree][tree] | 2.1.1   |

\* Binaries marked with an asterisk are not compiled but downloaded precompiled from the projects' git repo. This is because I have not yet implemented compiling their code, and the projects delived statically linked binaries anyway.

[bat]:https://github.com/sharkdp/bat
[btop]:https://github.com/aristocratos/btop
[eza]:https://github.com/eza-community/eza
[htop]:https://htop.dev/
[nano]:https://www.nano-editor.org/
[ncdu]:https://dev.yorhel.nl/ncdu
[nmon]:https://nmon.sourceforge.io/pmwiki.php
[nnn]:https://github.com/jarun/nnn
[pigz]:https://zlib.net/pigz/
[pv]:http://www.ivarch.com/programs/pv.shtml
[rg]:https://github.com/BurntSushi/ripgrep
[tree]:http://oldmanprogrammer.net/source.php?dir=projects/tree
[fzf]:https://github.com/junegunn/fzf.git
[tig]:https://github.com/jonas/tig
[gitui]:https://github.com/extrawurst/gitui