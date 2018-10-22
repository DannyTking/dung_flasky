import logging
from flask import request
from flask_script import Manager

from app import create_app
app_instance = create_app('default')
manager = Manager(app_instance)


@app_instance.before_request
def before_request():
    logging.debug(str(request.headers))
    logging.debug(request.args)
    logging.debug(str(request.data))


if __name__ == '__main__':
    manager.run()