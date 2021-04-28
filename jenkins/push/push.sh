#!/bin/bash

echo "PUSHING IMAGE"

IMAGE="maven-project"

echo "logging in do docker hub"

docker login -u $USER -p $PASS

echo "Tagging image"

docker tag $IMAGE:$BUILD_TAG $USER/$IMAGE:$BUILD_TAG

echo "Pushing image"

docker push $USER/$IMAGE:$BUILD_TAG
