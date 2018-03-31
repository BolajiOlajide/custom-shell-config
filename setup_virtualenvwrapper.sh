#!/usr/bin/env bash

set -eo pipefail

pip install virtualenvwrapper

export WORKON_HOME=~/.virtualenvs

mkdir -p $WORKON_HOME

source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh
