# distrohop - The tool of the distrohopper
Distrohop is a tool I made for distrohopping. It just lets you quickly install everything you
need for your new linux distro of choice. All you need is ``git`` and a functional
text editor (preferably ``vim``), and you can get started with distrohopping!

## Installation
Installing distrohopper is super-simple! All you need to do is: (but make sure that
``/usr/local/bin`` is in ``$PATH``)
```sh 
git clone https://callmesalmon/distrohop
cd distrohop
./setup.sh
```
Now that you have distrohop installed on your system, we can get on to configuring:

## Configuring
To configure, all you need is to open the file ``~/distrohop.cfg.sh``:
```sh
vim ~/distrohop.cfg.sh # Replace "vim" with your text editor of choice, but vim
                       # is installed on *most* systems (and is *awesome* :3), so 
                       # it is recommended.
```
Options are found in [CONFIG.md](/CONFIG.md).

## Running
The setup script added a file called ``distrohop`` to ``/usr/local/bin``,
then it is as simple as running it like so:
```sh
cd ~ && sudo distrohop
```
