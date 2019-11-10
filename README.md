# Docker Image: Alpine Linux Ansible

![License](https://img.shields.io/github/license/centinel/docker-alpine-ansible) ![Build Status](https://img.shields.io/gitlab/pipeline/centinel-foss/docker-alpine-ansible/master)

This [Docker](https://www.docker.com) project is a [Dockerfile](https://docs.docker.com/engine/reference/builder/) that can build a Docker container based on the latest version of [Alpine Linux](https://www.alpinelinux.org/). 

It includes all of the software that you should need to test [Ansible](https://www.ansible.com) [roles](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html) during development.

  - Ansible
  - Docker
  - [Molecule](https://molecule.readthedocs.io/en/stable/), a tool to test applying Ansible roles on different platforms.
  - [Tox](https://tox.readthedocs.io/en/latest/), a tool to test applying Ansible roles using different versions of Ansible.
  
This project was created so that I could create [GitLab CI](https://docs.gitlab.com/ee/ci/) pipelines in Ansible roles that I develop. This image spins up other Docker images that are used for Molecule and Tox tests.

## Registry Tags

  * `latest`: Latest stable version of Alpine Linux and all bundled tools.

## How to Use

1. Sign up for a free account on [GitLab.com](https://gitlab.com).
2. Create a [new project](https://docs.gitlab.com/ee/gitlab-basics/create-project.html).
3. Develop your Ansible role.
4. Create a `.gitlab-ci.yml` file at the root level of your project directory that uses this image in the `image` setting and runs Molecule and Tox tests in the `script` section.

See my Ansible project [repositories](https://gitlab.com/centinel-foss) for examples. 

## Build Notes

GitLab CI is configured to automatically rebuild this image on a regular basis.

It mirrors successful builds to my [Docker Hub account](https://hub.docker.com/u/centinelfoss).

## See Also

  * *[What is Docker?](https://opensource.com/resources/what-docker)*: A introductory article that goes over the basics of Docker.
  * *[Infrastructure Testing with Molecule](https://www.ansible.com/infrastructure-testing-with-molecule)*: A video that describes how you can use Molecule to run automated tests on Ansible roles you're developing.

## Support

If you need further assistance, please submit an issue in this repository.

## License

Apache License, 2.0.

## Author Information

Created in 2019 by [Justin Smith](mailto:justin@adminix.net).
