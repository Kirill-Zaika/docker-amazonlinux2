# Amazon Linux 2 Ansible Test Image

[![Docker Manual Build](https://img.shields.io/docker/automated/anatolek/docker-amazonlinux2.svg?maxAge=2592000)](https://hub.docker.com/r/anatolek/docker-amazonlinux2/)

Amazon Linux 2 Docker container for Ansible playbook and role testing.

## Tags

  - `latest` -- the latest version
  - `2.0.20220316.0` -- a version based on the specific [Amazon Linux 2 release](https://hub.docker.com/_/amazonlinux?tab=tags)

## How to Build

 If you need to build the image on your own locally, do the following:

  1. [Install Docker](https://docs.docker.com/engine/installation/)
  2. `cd` into this directory
  3. Run `docker build --no-cache -t anatolek/docker-amazonlinux2:<TAG> .`
  4. Run `docker push anatolek/docker-amazonlinux2:<TAG>`

## Notes

> **Important Note**: Use this image for testing in an isolated environment—not for production—and the settings and configuration used may not be suitable for a secure and performant production environment. Use on production servers/in the wild at your own risk!

## Author

Created in 2022 by [Anatolek Pedchenko](https://github.com/anatolek).
