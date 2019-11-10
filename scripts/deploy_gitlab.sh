#!/bin/sh
# Pushes a finished Docker image to GitLab.
# 
# $DOCKER_HUB_USERNAME and $DOCKER_HUB_ACCESS_TOKEN are environment variables specified using GitLab CI: https://docs.gitlab.com/ee/ci/variables/

set -e

docker login -u $CI_REGISTRY_USER -p $CI_REGISTRY_PASSWORD $CI_REGISTRY

docker tag $CI_PROJECT_NAME $GITLAB_IMAGE_TAG

docker push $GITLAB_IMAGE_TAG
