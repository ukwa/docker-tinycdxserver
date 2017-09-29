#git clone https://github.com/facebook/rocksdb.git
#cd rocksdb/
#git checkout rocksdb-3.11.2
curl -L -O https://github.com/facebook/rocksdb/archive/rocksdb-4.11.2.tar.gz
tar xvfz rocksdb-4.11.2.tar.gz
cd rocksdb-rocksdb-4.11.2/
make static_lib
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
make rocksdbjava
make jtest || exit
make install
cd ..
rm -fr rocksdb-rocksdb-4.11.2

