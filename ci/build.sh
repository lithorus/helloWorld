#!/bin/bash

echo "Arguments passed to build.sh:"
for arg in "$@"; do
  echo "  - $arg"
done

pip3 install virtualenv
python3 -m virtualenv venv
source venv/bin/activate
pip3 install build

hatch version "$(git describe --tags --abbrev=1 | sed 's/-/+/')"
python3 -m build