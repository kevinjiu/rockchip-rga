#!/bin/bash

ANDROID_NDK_HOME=~/RK/android-ndk-21
CMAKE_ANDROID=/usr/bin/cmake

${CMAKE_ANDROID} -DCMAKE_BUILD_TARGET=ndk -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK_HOME/build/cmake/android.toolchain.cmake \
      -DANDROID_NDK=$ANDROID_NDK_HOME \
      -DANDROID_ABI=armeabi-v7a \
      -DANDROID_TOOLCHAIN=clang \
      -DANDROID_PLATFORM=android-22 \
      -DANDROID_STL=c++_shared \
	  ..
make
