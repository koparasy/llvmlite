#!/bin/bash
export PYTHONNOUSERSITE=1
export LLVMLITE_CXX_STATIC_LINK=1
export LLVMLITE_SKIP_LLVM_VERSION_CHECK=1
export EXTRA_LLVM_LIBS="-fno-lto"
export LDFLAGS=-fPIC
#rm -rf build
config=llvm-config
export LLVM_CONFIG=$config
export LLVMLITE_USE_CMAKE=1
#python3 setup.py clean
CC=clang CXX=clang++ python3 -m pip install --verbose -e ./
#python3 setup.py build --force --verbose
#EXTRA_LLVM_LIBS="-fno-lto" LLVM_CONFIG=$config python3 setup.py --verbose install
