# The user of distrohop (e.g /home/{user}). This NEEDS to be set as distrohop is
# run with "sudo", and we don't want to configure root lol :3
DISTROHOP_USER=

# This is your package manager. It needs to be entered WITHOUT any parameters (all)
# paramaters are declared in other variables. If you're -- for example -- running on
# a debian-based OS (debian, ubuntu, kali etc.) this would be "apt"/"apt-get", if
# you're running a fedora-based OS (fedora, centos etc.) this'd be "dnf"/"yum" and
# if you have no friends this would be "pacman".
PACKAGE_MANAGER=

# This is your update command for your package manager. ONLY the parameter, not the
# name of the package manager as it's called with $PACKAGE_MANAGER $UPDATE_CMD, some
# common ones are "update", "upgrade" and "-Syu".
UPDATE_CMD=

# This is your install command for the package manager. Same as with the update command,
# ONLY the parameter is needed. Some common one's here are "install", "in" and "-S"
INSTALL_CMD=

# These are your packages which you want to install. Only packages that are installable
# trough your package manager, though, there's another option for those that aren't.
# This should NOT be provided as an array, but rather as a string with package names
# separated by spaces (this works with most package managers), for example on could
# set PACKAGES to be "neovim clang nasm zsh" or "curl python3 grub2 sbcl".
PACKAGES=

# These are the packages which you want to install, but can't be installed using your
# regular package manager. Unlike $PACKAGES, this is set as an array of commands which
# are used to install your software. For example, if johnny3003's project "awesome-proj"
# isn't installable by package manager means, it might be installable by:
# PACKAGES_NOMANAGER_CMD=( "git clone https://johnny3003projects.com/awesome-proj"
#                          "cd awesome-proj && python3 install-script.py" )
PACKAGES_NOMANAGER_CMD=

# This is your shell of choice. THIS NEEDS TO BE A FULL PATH. Available shells can be
# found with "chsh -l". One might for example set this to be /usr/bin/zsh.
SHELL_OF_CHOICE=

# This is the prompt set by the user. If this isn't set, distrohop will use its abyssmal
# default prompt: "user@platform:directory" without any colors.
USER_PROMPT=
