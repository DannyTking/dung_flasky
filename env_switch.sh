#!/bin/bash
if [[ $# -lt 1 ]]; then
	echo 'usage: sh env_switch.sh [y | n]'
    exit -1
fi

if [ $1 == "y" ]; then
	echo "-----------------------------------------------"
	echo "请执行如下命令"
	echo "source venv/bin/activate"
	echo "+++++++++++++++++++++++++++++++++++++++++++++++"
	exit 0
fi
echo "-----------------------------------------------"
echo "请执行如下命令"
echo "deactivate"
echo "+++++++++++++++++++++++++++++++++++++++++++++++"
exit 0
