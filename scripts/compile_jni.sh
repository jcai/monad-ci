#compile nirvana jni
cd target/nirvana
mkdir nirvana-c/build
mkdir support/dll
cd nirvana-c/build
rm -rf *
cmake -DSTATIC_LINK=on -DCMAKE_BUILD_TYPE=Release ..
make
#CC=gcc-4.1 CXX=g++-4.3 cmake  ..
cp src/*.so ../../support/dll/
rm -rf ../../nirvana-jni/src/main/java/nirvana/jni/services/gen
mkdir -p ../../nirvana-jni/src/main/java/nirvana/jni/services/gen
cp src/javaapi/* ../../nirvana-jni/src/main/java/nirvana/jni/services/gen


