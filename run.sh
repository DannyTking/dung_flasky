#!/usr/bin/env bash
source venv/bin/activate

cnf_g='cnf_gunicorn.py'
cnf_main='manager'
cnf_app='app_instance'

gunicorn -w 1 ${cnf_main}:${cnf_app}