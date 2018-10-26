import os
from dotenv import load_dotenv
import logging

from flask import request
from flask_script import Manager

from app import create_app

dotenv_path = os.path.join(os.path.dirname(__file__), '.env')
if os.path.exists(dotenv_path):
    load_dotenv(dotenv_path)

app_instance = create_app('default')
manager = Manager(app_instance)


@app_instance.before_request
def before_request():
    logging.debug(str(request.headers))
    logging.debug(request.args)
    logging.debug(str(request.data))


if __name__ == '__main__':
    manager.run()