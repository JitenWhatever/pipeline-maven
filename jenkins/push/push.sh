#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u jitenwhatever -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG jitenwhatever/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push jitenwhatever/$IMAGE:$BUILD_TAG
