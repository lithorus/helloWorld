#!/bin/bash

pip3 install virtualenv
python3 -m virtualenv venv
source venv/bin/activate
pip3 install build

git tag 0.0.0
python3 -m build
