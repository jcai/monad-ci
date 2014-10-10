cd target/monad
BUILD_NUMBER=r`git log -n1 --pretty=format:%at | awk '{print strftime("%y%m%d%H%M",$1)}'`
if [ $TRAVIS_TAG ];then
  MVN_OPTS="-Xmx1g" mvn -Dmaven.test.skip=true -DskipTests=true -Darguments="-DskipTests" -DBUILD_ID=$BUILD_ID -DBUILD_NUMBER=$BUILD_NUMBER -P production clean package
else
  MVN_OPTS="-Xmx1g" mvn -Dmaven.test.skip=true -DskipTests=true -Darguments="-DskipTests" -DBUILD_ID=$BUILD_ID -DBUILD_NUMBER=$BUILD_NUMBER -P production clean package
fi
