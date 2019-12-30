#!/bin/sh

export AUTOBUILD_VARIABLES_FILE=`pwd`/variables
export PYTHONPATH=${FLATPAK_DEST}/app/lib/python2.7/site-packages/
export PATH=$PATH:`pwd`/autobuild-1.1/bin/

# Build with approx 0.75 of all available cores to not totally overload the system during build of main viewer
export VIEWER_BUILD_JOBS=`expr ${FLATPAK_BUILDER_N_JOBS} \* 2 / 3`
export LL_BUILD=no

set -e
autobuild configure -v -A64 -c ReleaseFS_open -- -DUSESYSTEMLIBS=On -DCMAKE_INCLUDE_PATH=${FLATPAK_DEST}/include -DCMAKE_LIBRARY_PATH=${FLATPAK_DEST}/lib -DCMAKE_CXX_FLAGS=-L${FLATPAK_DEST}/lib

cd build-linux-i686
make -j${VIEWER_BUILD_JOBS}
mv newview/packaged ${FLATPAK_DEST}/viewer
