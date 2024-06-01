#!/usr/bin/bash

QMAKE=/usr/lib/qt5/bin/qmake

set -xe

mkdir -p ../08-mainant/build && cd ../08-mainant/build
${QMAKE} -spec linux-g++ CONFIG+=debug ../MainAnt.pro > /dev/null

make -j12 > /dev/null
cd ../../callgrind
