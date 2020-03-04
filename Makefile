setup:
	python3 -m venv .capstoneproject
	source .capstoneproject/bin/activate

install:
	pip install --upgrade pip && pip install -r requirements.txt

lint:
	hadolint Dockerfile
		pylint --disable=R,C,W1203,W1202 app/app.py

cloudcreate:
	bash ./scripts/cloud_scripts.sh create capstoneproject infastructure/network.yaml infastructure/parameters.json

cloudupdate:
	bash ./scripts/cloud_scripts.sh update capstoneproject infastructure/network.yaml infastructure/parameters.json

clouddelete:
	bash ./scripts/cloud_scripts.sh delete capstoneproject


jenkinscreate:
	bash ./scripts/cloud_scripts.sh create capstonejenkins infastructure/jenkins.yaml infastructure/parameters.json


all: install lint

