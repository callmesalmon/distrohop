#!/usr/bin/sh

git clone https://github.com/callmesalmon/vine vine_editor.distrohop
cd vine_editor.distrohop
gcc vine.c -o /usr/local/bin/distrohop-vine
cd ..
rm -rf vine_editor.distrohop
