#!/bin/bash

python3 -m virtualenv venv
source venv/bin/activate
pip3 install build

python3 -m build
