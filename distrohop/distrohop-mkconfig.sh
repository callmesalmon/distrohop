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
echo "$(cat "/usr/local/bin/var/distrohop.cfg.sh")" >> $MKCONFIG_FILE
