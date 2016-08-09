#!/bin/bash
# $1 -> Job workspace
# $2 -> Container name
# $3 -> Container image name
WORKSPACE=$1
NAME_ID=$2
IMAGE_ID=$3

cd $WORKSPACE/docker-devel

# Create image based on 'devel' branch
docker build -t $IMAGE_ID --no-cache -f Dockerfile .

# Start container
docker run -d -P --name $NAME_ID $IMAGE_ID

# Wait for the container
sleep 10

cd $WORKSPACE
