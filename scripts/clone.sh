mkdir -p target
if [ $TRAVIS_TAG ];then
  echo "checkout ${TRAVIS_TAG} ..."
  git clone  --depth=50 --branch=monad-core-$TRAVIS_TAG $GIT_URL target/monad
else
  echo "checkout develop ..."
  git clone  --depth=50 -b monad-4 $GIT_URL target/monad
fi

