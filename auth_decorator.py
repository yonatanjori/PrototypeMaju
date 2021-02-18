
from functools import wraps
from flask import Flask, redirect, url_for, session, request,render_template


def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        user = dict(session).get('profile', None)
        if user:
            return f(*args, **kwargs)

        return redirect(url_for('login'))
    return decorated_function


def login_required_api(f):
    @wraps(f)
    def decorated_function_api(*args, **kwargs):
        user = dict(session).get('profile', None)

        if user:
            return f(*args, **kwargs)

        return redirect(url_for('login_api'))
    return decorated_function_api
