<img align="right" src="https://raw.github.com/cliffano/jenkins-workspace/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/cliffano/aem-workspace/workflows/CI/badge.svg)](https://github.com/cliffano/aem-workspace/actions?query=workflow%3ACI)
<br/>

Jenkins Workspace
-------------

Jenkins Workspace is a simple workspace area for running multiple versions of [Jenkins](https://jenkins.io).
It provides convenient build targets to start Jenkins and reset its workspace.

Note that only LTS versions are supported.

Install
-------

Clone Jenkins Workspace repo:

    git clone https://github.com/cliffano/jenkins-workspace

Usage
-----

All build targets have the format:

    make <version>-<download|start|clean>

Download Jenkins 2.222.1 war file:

    make 2.222.1-download

Start Jenkins:

    make 2.222.1-start

Each Jenkins version is allocated the following port numbers:

| Version | HTTP Port |
|---------|-----------|
| 2.222.1 | 22221     |

First start will take a while due to Jenkins initialising Jenkins Home workspace.

And clean up Jenkins 2.222.1 workspace:

    make 2.222.1-clean
