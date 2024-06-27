#!/bin/bash

docker tag aggregator-service:latest 533266979424.dkr.ecr.us-east-1.amazonaws.com/aggregator-service:latest
docker push 533266979424.dkr.ecr.us-east-1.amazonaws.com/aggregator-service:latest
