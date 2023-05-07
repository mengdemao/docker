#!/bin/bash

docker build -f Dockerfile.base -t mengdemao/docker-base:latest .
docker build -f Dockerfile.crosstool -t mengdemao/docker-crosstool:latest .
docker build -f Dockerfile.compiler -t mengdemao/docker-compiler:latest .

