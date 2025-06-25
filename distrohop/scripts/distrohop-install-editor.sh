#!/usr/bin/sh

# Use snaptoken's repo, as it's basically Antirez's repo but with some
# improvements. Thanks to Antirez, anyways, since he made original kilo.
git clone https://github.com/snaptoken/kilo-src kilo.upstream_repo.distrohop

# Build the project to ``distrohop-kilo``
cd kilo.upstream_repo.distrohop
gcc kilo.c -o /usr/local/bin/hopkilo

# Remove any traces of the upstream repo.
cd ..
rm -rf kilo.upstream_repo.distrohop
