#!/bin/sh
set -e
echo $LD_LIBRARY_PATH
./configure --with-clutils=/usr/local
make