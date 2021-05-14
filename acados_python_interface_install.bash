#!/bin/bash
#https://docs.acados.org/installation/index.html
echo "Build and install the Acados C library.."
git clone https://github.com/acados/acados.git &&
cd acados &&
git submodule update --recursive --init &&
mkdir -p build &&
cd build &&
cmake -DACADOS_WITH_QPOASES=ON .. &&
# add more optional arguments e.g. -DACADOS_WITH_OSQP=OFF/ON -DACADOS_INSTALL_DIR=<path_to_acados_installation_folder> above
make install &&
echo "Install the Python interface.."
#https://docs.acados.org/python_interface/index.html
BUILD_DIR=$(pwd)
ACADOS_DIR="$(dirname "$BUILD_DIR")"
pip3 install -e $ACADOS_DIR/interfaces/acados_template && 
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"$ACADOS_DIR/lib" &&
export ACADOS_SOURCE_DIR="$ACADOS_DIR"
