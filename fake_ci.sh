#!/bin/bash

docker build -f Dockerfile.base -t docker_base:latest .
docker build -f Dockerfile.crosstool -t docker_crosstool:latest .
docker build -f Dockerfile.compiler -t docker_compiler:latest .

