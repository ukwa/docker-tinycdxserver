apt-get install -y ca-certificates-java

export JAVA_HOME=/usr/lib/jvm/java-8-oracle

git clone https://github.com/ukwa/outbackcdx.git
cd outbackcdx
git checkout ukwa-production

export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8

mvn package || exit

cp target/outbackcdx*.jar ../outbackcdx.jar

rm -fr outbackcdx

rm -fr ~/.m2

