#!/usr/bin/env bash
set -e

curl -k ${SERVER_URL}/start?id=${BUILD_ID}
rm -rf $HOME/.m2
./mvnw package
curl -k ${SERVER_URL}/stop?id=${BUILD_ID}
