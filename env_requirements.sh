#!/bin/bash
if [[ $# -lt 1 ]]; then
	echo 'usage: sh env_requirements.sh [i | s]'
	echo 'i : install, s : save'
    exit -1
fi
source venv/bin/activate
pip install --upgrade pip
if [ $1 == "i" ]; then
    pip install -r requirements.txt
    exit 0
fi
pip freeze ->requirements.txt
