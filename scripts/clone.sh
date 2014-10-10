mkdir -p target
if [ $TRAVIS_TAG ];then
  echo "checkout ${TRAVIS_TAG} ..."
  git clone  --depth=50 --branch=nirvana-project-$TRAVIS_TAG $GIT_URL target/nirvana
else
  echo "checkout develop ..."
  git clone  --depth=50 -b develop $GIT_URL target/nirvana
fi

