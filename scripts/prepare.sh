mkdir -p target
cd target
#install boost
echo "Compling boost ...."
wget "http://downloads.sourceforge.net/project/boost/boost/1.55.0/boost_1_55_0.tar.bz2" -O /tmp/boost.tar.bz2
tar xfj /tmp/boost.tar.bz2
cd boost*
sudo ./b2 cxxflags=-fPIC  --with-thread --with-system link=static threading=multi  install > /tmp/install.log
cd -
#zeromq 
echo "Compling zmq ...."
wget "http://download.zeromq.org/zeromq-3.2.4.tar.gz" -O /tmp/zmq.tar.gz
tar xfz /tmp/zmq.tar.gz
cd zeromq*
./configure --with-pic
make > /tmp/make.log
sudo make install > /tmp/install.log
cd -

#install snappy
echo "Compling snappy ...."
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

#install protoc
wget https://protobuf.googlecode.com/svn/rc/protobuf-2.5.0.tar.gz
tar xfz protobuf-2.5.0.tar.gz
cd protobuf-2.5.0
./configure --with-pic --enable-static
make
sudo make install
cd -


sudo ldconfig

