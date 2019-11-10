FROM docker:19.03
LABEL maintainer="Justin Smith"

ENV PACKAGES="\
  autoconf \
  automake \
  build-base \
  curl \
  gcc \
  git \
  libffi-dev \
  linux-headers \
  musl-dev \
  openssh \
  openssl-dev \
  py3-cryptography \
  py3-pip \
  python3-dev"

ENV PIP_PACKAGES="\
  ansible \
  docker \
  molecule \
  tox"
  
# Install package dependencies
RUN apk update && apk add --no-cache $PACKAGES

# Install Python package dependencies
RUN pip3 install $PIP_PACKAGES