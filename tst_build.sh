#!/bin/bash

docker build -t npeca75/php:81 -f Dockerfile81 .
docker push npeca75/php:81
docker build -t npeca75/php:82 -f Dockerfile82 .
docker push npeca75/php:82
docker build -t npeca75/php:84 -f Dockerfile .
docker push npeca75/php:84
docker image prune -a -f
