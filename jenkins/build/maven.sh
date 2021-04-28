#!/bin/bash

echo "*******************************************"
echo "** Building jar**"

#maven run parameter: mvn -B -DskipTests clean package

docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:alpine "$@"
