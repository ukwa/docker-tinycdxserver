apt-get install -y ca-certificates-java
#dpkg-reconfigure ca-certificates-java

export JAVA_HOME=/usr/lib/jvm/java-8-oracle

git clone https://github.com/nla/outbackcdx.git
cd outbackcdx
git checkout 0.3.2

mvn package || exit

cp target/tiny*.jar tinycdxserver.jar
