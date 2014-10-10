mkdir -p target
cd target
#install snappy
git clone https://github.com/google/snappy.git
cd snappy
./autogen.sh
./configure --with-pic
make
sudo make install
cd -
#leveldb
git clone https://github.com/google/leveldb.git
cd leveldb
CXXFLAGS="-fPIC" make 
sudo cp -r include/* /usr/local/include/
sudo cp libleveldb.a /usr/local/lib/
cd -

sudo ldconfig

