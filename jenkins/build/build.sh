#!/bin/bash

#Copy the new jar to build location
cp java-app/target/*.jar jenkins/build/

echo "Building docker image"

#cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
cd jenkins/build/ 
docker build -f Dockerfile-java -t maven-project:$BUILD_TAG .
