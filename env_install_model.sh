#!/bin/bash

if [[ $# -lt 1 ]]; then
	echo 'usage: sh env_install_model.sh [model_name : Flask] [i | u]'
	echo 'i: install u: uninstall'
    exit -1
fi

source venv/bin/activate
pip install --upgrade pip
if [ $2 == "u" ]; then
    echo "pip uninstall $1 ......."
    pip uninstall $1
    pip freeze ->requirements.txt
    echo "pip done!"
    exit 0
fi
echo "pip install $1 ......."
pip install -U $1
pip freeze ->requirements.txt
echo "pip done!"