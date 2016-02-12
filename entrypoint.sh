#!/bin/bash
set -e

cd /gwt-tools
git pull

cd /gwt
exec "$@"
