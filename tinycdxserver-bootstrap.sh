apt-get install -y ca-certificates-java

export JAVA_HOME=/usr/lib/jvm/java-8-oracle

git clone https://github.com/nla/outbackcdx.git
cd outbackcdx

mvn package || exit

cp target/outbackcdx*.jar outbackcdx.jar
