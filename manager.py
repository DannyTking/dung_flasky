import logging
from flask import request

from app import create_app
app_instance = create_app('default')


@app_instance.before_request
def before_request():
    logging.debug(str(request.headers))
    logging.debug(request.args)
    logging.debug(str(request.data))