#!/bin/bash
dirpath=$(cd `dirname $0`; pwd)
echo 'venv work space : '${dirpath}
if [ -d "$dirpath/venv" ]; then  
	echo '此工作目录venv已存在'
	exit 0
fi
echo 'python3 -m venv venv'
python3 -m venv venv
ls -atrl ${dirpath}
if [ -d "$dirpath/venv" ]; then  
	echo "# Virtual environment \nvenv \n" >> ${dirpath}/.gitignore
	echo '此工作目录venv初始化成功'
	echo "-----------------------------------------------"
	echo "根据实际需求，可执行脚本"
	echo "env_switch.sh env_requirements.sh"
	echo "+++++++++++++++++++++++++++++++++++++++++++++++"
	exit 0
fi
echo "err: venv init failed!!!"
