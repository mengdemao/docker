#!/bin/bash

docker build -f Dockerfile.base -t docker-base:latest .
docker build -f Dockerfile.crosstool -t docker-crosstool:latest .
docker build -f Dockerfile.compiler -t docker-compiler:latest .

