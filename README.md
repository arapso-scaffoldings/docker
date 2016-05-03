# Welcome in PigUI
Design your HTTP requests as web forms

## Prerequisites
- Python is installed on machine.
- [Pip](https://pip.pypa.io/en/stable/) is installed and working.
- Pycharm is up and running.
- [Flask](http://flask.pocoo.org/)

## Create virtualenv and import project dependencies
- Create virtual environment 

```
#install virtualenv feature
pip install virtualenv 

# creating virutal environmnet for pigui (keep it outside pigui project)
virtualenv pigui-virtenv 

# activate virtualenv
source pigui-virtenv/bin/activate 

# install all packages from requirements file
pip install -r $PIGUI_SRC/requirements.txt 
```

## Import project to PyCharm IDE
- Open IDE
- File -> Open -> Choose project folder from dialog
- File -> Settings -> Project -> Project Interpreter -> Gear icon -> Find virtualenv machile from dialog
- RMC (right mouse click) on app.py file -> Run app
- Go to browser http://localhost:5000

[![Gitter](https://badges.gitter.im/damian0o/pigui.svg)](https://gitter.im/damian0o/pigui?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
