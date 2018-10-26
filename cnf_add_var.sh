#!/usr/bin/env bash

if [[ $# -lt 2 ]]; then
	echo 'usage: sh cnf_add_var.sh key var'
    exit -1
fi

dirpath=$(cd `dirname $0`; pwd)
cnfFile='.env'

echo "$1=$2" >> ${cnfFile}