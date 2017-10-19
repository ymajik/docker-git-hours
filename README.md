# ymajik/git-hours

[![Docker Automated build](https://img.shields.io/docker/automated/ymajik/git-hours.svg)](https://hub.docker.com/r/ymajik/git-hours/builds/)
[![Build Status](https://travis-ci.org/ymajik/docker-git-hours.svg)](https://travis-ci.org/ymajik/docker-git-hours)

- [Introduction](#introduction)
- [Getting started](#getting-started)
  - [Installation](#installation)
  - [Quickstart](#quickstart)
  - [Upgrading](#upgrading)

# Introduction

`Dockerfile` to create a [Docker](https://www.docker.com/) container image for [git-hours](https://github.com/kimmobrunfeldt/git-hours).

Git-hours is a tool to estimate time spent on a git repository.

# Getting started

## Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/ymajik/git-hours) and is the recommended method of installation.

```bash
docker pull ymajik/git-hours:latest
```

Alternatively you can build the image yourself.

```bash
docker build -t ymajik/git-hours .
```

## Quickstart

Start git-hours in the directory you want to count. It must be in the same directory where the '.git' dir is located:

```bash
docker run --rm -v $(pwd):/code ymajik/git-hours
```

## Upgrading

To upgrade to newer releases:

  1. Download the updated Docker image:

  ```bash
  docker pull ymajik/git-hours:latest
  ```

  1. Remove the container

  ```bash
  docker rm -v git-hours
  ```

  1. Use the updated image

  ```bash
  docker run --rm -v $(pwd):/code ymajik/git-hours
  ```
