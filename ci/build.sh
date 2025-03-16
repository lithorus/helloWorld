#!/bin/bash

pip3 install virtualenv
python3 -m virtualenv venv
source venv/bin/activate
pip3 install build

python3 -m build
