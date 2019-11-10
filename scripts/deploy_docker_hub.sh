#!/bin/sh
# Pushes a finished Docker image to the Docker Hub.
# 
# $DOCKER_HUB_USERNAME and $DOCKER_HUB_ACCESS_TOKEN are environment variables specified using GitLab CI: https://docs.gitlab.com/ee/ci/variables/

set -e

docker login -u $DOCKER_HUB_USERNAME -p $DOCKER_HUB_ACCESS_TOKEN

docker tag $CI_PROJECT_NAME $DOCKER_HUB_IMAGE_TAG

docker push $DOCKER_HUB_IMAGE_TAG
