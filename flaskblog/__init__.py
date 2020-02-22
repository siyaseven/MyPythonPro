from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt 
from flask_login import LoginManager


app = Flask(__name__)
app.config['SECRET_KEY'] = 'c5f0b016bed36cf0fd469987c7ea8e1b'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///site.db'
db =  SQLAlchemy(app)
bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login'
login_manager.login_message_category = 'info'

from flaskblog import routes


