install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

dev:
	export FLASK_ENV=development

format:
	black *.py

lint:
	pylint --disable=R,C app.py

test:
	python -m pytest -vv -cov=hello test_hello.py

all: install lint test
