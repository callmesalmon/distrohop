# Configuration guide
The config file is just a shell script, simple as that.
Below are all the options for configuring the main script
(set as variables):

- ``DISTROHOP_USER`` - The user of distrohop (/home/(user)/)
- ``PACKAGE_MANAGER`` - Your systems package manager (for example:
  archlinux: ``pacman``, debian/ubuntu/kali: ``apt/apt-get``,
  fedora/centos: ``dnf``)
- ``UPDATE_CMD`` - Your package managers update command (on debian
  it's ``update``, for example, and on archlinux it's ``-Syu``)
- ``INSTALL_CMD`` - Your package manager install command (on debian
  it's ``install``, on archlinux it's ``-S``)
- ``PACKAGES`` - A string of the packages you want to install, this
  might be ``clang llvm gcc neovim`` or something similar.
- ``PACKAGES_NOMANAGER_CMD`` - An *array* of commands to install
  packages *NOT* available by your normal package manager, like:
```sh
git clone https://github.com/someone/package && cd package
sudo make install
```
- ``SHELL_OF_CHOICE`` - The shell you want. Must be a full path to
  the shell and must be installed.
- ``USER_PROMPT`` - The PS1 you want, if it's not set then distrohop
  will use its boring default prompt, ``user@machine:directory$`` with
  no colours.
