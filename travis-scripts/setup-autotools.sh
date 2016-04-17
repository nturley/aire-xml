#!/bin/sh
set -e
aclocal
autoheader
autoconf
libtoolize
automake --add-missing