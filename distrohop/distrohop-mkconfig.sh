#!/usr/bin/sh

MKCONFIG_USER="$(whoami)"

if [ $# -lt 1 ]; then
    echo "[INFO] User not specified, using \"whoami\" command."
    echo "[INFO] \"whoami\" returned $(whoami)."
else
    MKCONFIG_USER="$1"
fi

MKCONFIG_FILE="/home/$MKCONFIG_USER/distrohop.cfg.sh"

touch $MKCONFIG_FILE

echo -e "DISTROHOP_USER=" >> $MKCONFIG_FILE
echo -e "PACKAGE_MANAGER=" >> $MKCONFIG_FILE
echo -e "UPDATE_CMD=" >> $MKCONFIG_FILE
echo -e "INSTALL_CMD=" >> $MKCONFIG_FILE
echo -e "PACKAGES=" >> $MKCONFIG_FILE
echo -e "PACKAGES_NOMANAGER_CMD=" >> $MKCONFIG_FILE
echo -e "SHELL_OF_CHOICE=" >> $MKCONFIG_FILE
echo -e "USER_PROMPT=" >> $MKCONFIG_FILE
