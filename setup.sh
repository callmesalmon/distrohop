#!/usr/bin/sh

# VAR directory, needed for "distrohop-mkconfig" program.
cp -r distrohop/var                /usr/local/bin/var

# Builtin program utilities
cp distrohop/distrohop.sh          /usr/local/bin/distrohop
cp distrohop/distrohop-mkconfig.sh /usr/local/bin/distrohop-mkconfig

# If you have GCC, I recommend you enable distrohop's free text editor.
if [ $1 == "--editor" ] || [ $1 == "-e" ]; then
    distrohop/scripts/distrohop-install-editor.sh
fi
