#!/usr/bin/env bash

if [[ $# -lt 1 ]]; then
	echo 'usage: sh cnf_deploy.sh port'
    exit -1
fi

dirpath=$(cd `dirname $0`; pwd)
cnfFile='cnf_gunicorn.py'
prjName=`basename $dirpath`

echo "# deploy gen valiable for gunicorn" >> ${cnfFile}
echo "loglevel = "\'"warning"\' >> ${cnfFile}
echo "bind = "\'"127.0.0.1:$1"\' >> ${cnfFile}
echo "proc_name = "\'"/tmp/gunicorn_$prjName.pid"\' >> ${cnfFile}
echo "pidfile = "\'"/tmp/gunicorn_${prjName}_$1.log"\' >> ${cnfFile}


echo "-----------------------------------------------"
echo "将 Gunicorn 作为服务运行:"
echo "start.sh"
echo "+++++++++++++++++++++++++++++++++++++++++++++++"

echo "location /$prjName/{\n" > ${prjName}.nginx

echo "proxy_pass http://127.0.0.1:$1/;\n" >> ${prjName}.nginx

echo "}\n" >> ${prjName}.nginx

echo "-----------------------------------------------"
echo "/etc/nginx/nginx.conf 配置代理配置文件: ${prjName}.nginx"
echo "需要重新起动 nginx 服务"
echo "nginx -s reload"
echo "+++++++++++++++++++++++++++++++++++++++++++++++"