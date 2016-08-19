#!/bin/bash

alias ml="module load"
echo make sure to git checkout tags/v... before running this script

# ml cmake
ml cuda
ml boost
#ml hdf5/intel/1.8.15-patch1
ml hdf5_18/1.8.15
ml protobuf/gcc/2.6.1
ml gflags/gcc
ml glog/gcc
ml leveldb/gcc
ml snappy/gcc
ml opencv/gcc
ml python/2.7.10
# ml

export MKL_LIBRARIES=${MKLROOT}/lib
export MKL_INCLUDE_DIR=${MKLROOT}/include

cd caffe
mkdir build
cd build

cmake .. \
  -DGLOG_ROOT_DIR=${GLOG_ROOT_DIR} \
  -DSNAPPY_ROOT_DIR=${SNAPPY_ROOT_DIR} \
  -DBLAS="mkl" \
  -DPYTHON_DIR=${PYTHON_DIR} \
  -Dpython_version=2 \
  -DPYTHON_EXECUTABLE=${PYTHON_DIR}/bin/python2 \
  -DCMAKE_INSTALL_PREFIX=/cm/shared/apps/caffe/gcc/1.0 \
  -DCMAKE_CXX_FLAGS=-I/cm/shared/apps/openmpi/intel/1.8.4/include

make all -j8 >> ../../make.log
#make runtest

