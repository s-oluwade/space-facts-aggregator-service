#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 533266979424.dkr.ecr.us-east-1.amazonaws.com
aws ecr create-repository --repository-name aggregator-service
docker build -t aggregator-service .
docker tag aggregator-service:latest 533266979424.dkr.ecr.us-east-1.amazonaws.com/aggregator-service:latest
docker push 533266979424.dkr.ecr.us-east-1.amazonaws.com/aggregator-service:latest
docker rmi 533266979424.dkr.ecr.us-east-1.amazonaws.com/aggregator-service:latest