# distrohop - The tool of the distrohopper
Distrohop is a tool I made for distrohopping. It just lets you quickly install everything you
need for your new linux distro of choice. All you need is ``git`` and a functional
text editor (preferably ``vim`` or distrohops builtin editor), and you can get started with distrohopping!

## Installation
Installing distrohopper is super-simple! All you need to do is: (but make sure that
``/usr/local/bin`` is in ``$PATH``)
```sh 
git clone https://callmesalmon/distrohop
cd distrohop
sudo ./setup.sh

## NOTE: If you want to enable distrohops builtin text editor (distrohop-vine), you
##       can instead run the setup command with the --editor flag (requires GCC):
sudo ./setup.sh --editor
```
Now that you have distrohop installed on your system, we can get on to configuring:

## Configuring
To configure, all you need is to generate and open the file ``~/distrohop.cfg.sh``:
```sh
distrohop-mkconfig <username>
vim                ~/distrohop.cfg.sh # If you ran "./setup.sh"
distrohop-vine     ~/distrohop.cfg.sh # If you ran "./setup.sh --editor"
```
Options are found in [CONFIG.md](/CONFIG.md).

## Running
The setup script added a file called ``distrohop`` to ``/usr/local/bin``,
then it is as simple as running it like so:
```sh
cd ~ && sudo distrohop <username>
```

## Building documentation
If you want an extensive documentation piece (that you can open with ``man``), you can
build the documentation. You need [rtfm](https://github.com/callmesalmon/rtfm).
```sh
./doc.sh
```
