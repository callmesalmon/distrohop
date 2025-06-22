#!/usr/bin/sh

# Use snaptoken's repo, as it's basically Antirez's repo but with some
# improvements. Thanks to Antirez, anyways, since he made original kilo.
git clone https://github.com/snaptoken/kilo-src kilo.distrohop

# Build the project to ``distrohop-kilo``
cd kilo.distrohop
gcc kilo.c -o /usr/local/bin/distrohop-kilo

# Remove any traces of the upstream repo.
cd ..
rm -rf kilo.distrohop
