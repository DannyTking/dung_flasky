#!/bin/bash

echo "builddep for python3.6.5"
sudo yum install yum-utils
sudo yum-builddep python
wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz
tar xf Python-3.6.5.tgz
echo "cd && ./configure && make && sudo make install"
echo "./configure --enable-optimizations"
