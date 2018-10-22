#!/usr/bin/env bash
source venv/bin/activate

cp nohup.out ./nohup.out_bak

echo "" > nohup.out

cnf_g='cnf_gunicorn.py'
cnf_main='manager'
cnf_app='app_instance'

nohup gunicorn -c ${cnf_g} ${cnf_main}:${cnf_app} & > /dev/null 2>&1
sleep 1
echo "started"

ps -aux|grep gunicorn| grep -v grep
ps -aux|grep gunicorn| grep -v grep | awk '{print $2}'