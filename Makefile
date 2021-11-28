setup:
	# Create python virtualenv & source it
	python3 -m venv ~/.capstone
	source ~/.capstone/bin/activate
	

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip && pip install -r requirements.txt
    pip install cython
    pip install pandas

	### Install hadolint
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
    chmod +x /bin/hadolint
    hadolint --version

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

push:
	sh ./scripts/docker_push.sh

all: setup install lint test 
