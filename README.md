# GWT Build with a Docker Image

[![Docker Stars](https://img.shields.io/docker/stars/foxylion/gwt-build.svg?style=flat-square)](https://hub.docker.com/r/foxylion/gwt-build/)
[![Docker Pulls](https://img.shields.io/docker/pulls/foxylion/gwt-build.svg?style=flat-square)](https://hub.docker.com/r/foxylion/gwt-build/)

Docker Image to build GWT with effort.

# Build GWT on Linux

Can be used on any Linux with installed ``docker-engine``.

1. Switch into gwt your Git directory
2. Run Docker container ``docker run --rm -v `pwd`:/gwt foxylion/gwt-build ant clean dist-dev``

The built jars can be found under ``build/lib/``.

# Build GWT on Windows

1. Clone this repository into your GWT Git repository.
2. Switch into the cloned repository ``cd gwt-build``
3. Start Vagrant machine ``vagrant up``
4. SSH into the machine ``vagrant ssh``
5. Change to the build directory ``cd /vagrant``
6. Run Docker container ``docker run --rm -v `pwd`:/gwt foxylion/gwt-build ant clean dist-dev``

The built jars can be found under ``build/lib/``.
