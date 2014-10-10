#compile monad jni
cd target/monad
mkdir monad-c/build
mkdir support/dll
cd monad-c/build
rm -rf *
cmake -DSTATIC_LINK=on -DCMAKE_BUILD_TYPE=Release ..
make
#CC=gcc-4.1 CXX=g++-4.3 cmake  ..
cp src/*.so ../../support/dll/
rm -rf ../../monad-all/src/main/java/monad/jni
mkdir -p ../../monad-all/src/main/java/monad/jni
cp javaapi/* ../../monad-all/src/main/java/monad/jni/


