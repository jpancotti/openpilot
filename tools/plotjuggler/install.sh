#!/bin/bash -e

mkdir -p bin
cd bin

wget https://github.com/commaai/PlotJuggler/releases/download/latest/libDataLoadRlog.so.tar.gz
tar -xf libDataLoadRlog.so.tar.gz
rm libDataLoadRlog.so.tar.gz

wget https://github.com/commaai/PlotJuggler/releases/download/latest/plotjuggler.tar.gz
tar -xf plotjuggler.tar.gz
rm plotjuggler.tar.gz

pip install pycapnp
pip install dictdiffer
pip install tqdm
pip uninstall pycurl
PYCURL_SSL_LIBRARY=openssl LDFLAGS="-L/usr/local/opt/openssl/lib" CPPFLAGS="-I/usr/local/opt/openssl/include" pip install --no-cache-dir pycurl
pip install tenacity
pip install atomicwrites
pip install requests
