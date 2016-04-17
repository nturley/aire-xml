#!/bin/sh
set -e
mkdir -p clutils
cd clutils
wget http://nturley-buildartifacts.s3-website-us-west-1.amazonaws.com/clutils.tar.gz
tar -xvzf clutils.tar.gz
# one of these should do it
sudo cp -r export/* /usr/local
sudo cp -r export/* /usr
sudo cp -r export/* /
sudo ln -s /usr/local/include/clutils-0.0 /usr/local/include/clutils
cd ..
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
