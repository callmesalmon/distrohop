#!/usr/bin/sh

LOCAL_BIN="local/bin"

# Check if argc > 0
if [ $# -lt 1 ]; then
    echo "[ERROR] Please supply a username for distrohop to configure."
    exit 1
fi

# --help flag.
if [ $1 == "--help" ]; then
    echo "Distrohop is a program made for distrohopping."
    echo "It provides a multitude of features to help your distrohopping adventure."
    echo "If distrohop's documentation was built (with ./doc.sh, dependencies:"
    echo "rtfm), type\"man distrohop\" for more extensive help."
fi

# Check if config file exists
if [ ! -f "/home/$1/distrohop.cfg.sh" ]; then
    echo "[ERROR] File /home/$1/distrohop.cfg.sh not found... :("
    exit 1
fi

# Import required variable files
source "/usr/$LOCAL_BIN/var/distrohop-prompt.sh"

# Import config file for distrohop
source "/home/$1/distrohop.cfg.sh"

# Setup package manager, on debian:
#     sudo apt update
${PACKAGE_MANAGER} ${UPDATE_CMD}

# Install packages, on debian:
#     sudo apt install ${PACKAGES}
${PACKAGE_MANAGER} ${INSTALL_CMD} ${PACKAGES}

# Install packages without package manager, neovim for example:
#     git clone https://github.com/neovim/neovim
#     cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
for nomanage_package_cmd in "${PACKAGES_NOMANAGER_CMD[@]}"; do
    ${nomanage_package_cmd}
done

# Setup shell, zsh for example:
#     chsh user -s /usr/bin/zsh
chsh $DISTROHOP_USER -s ${SHELL_OF_CHOICE}

# Change PS1 to user defined PS1:
if [ -z ${USER_PROMPT+x} ]; then
    export PS1=${DISTROHOP_DEFAULT_PROMPT}
else
    export PS1=${USER_PROMPT}
fi
