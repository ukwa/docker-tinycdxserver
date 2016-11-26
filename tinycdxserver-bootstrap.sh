export JAVA_HOME=/usr/lib/jvm/java-8-oracle

git clone https://github.com/nla/outbackcdx.git
git checkout 0.3.2
cd tinycdxserver/

mvn package || exit

cp target/tiny*.jar tinycdxserver.jar
