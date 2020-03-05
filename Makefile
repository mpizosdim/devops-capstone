setup:
	python3 -m venv .capstoneproject
	source .capstoneproject/bin/activate

install:
	pip install --upgrade pip && pip install -r requirements.txt

lint:
	pylint --disable=R,C,W1203,W1202,F0401 app/app.py

cloudcreate:
	bash ./scriptssh/cloud_scripts.sh create capstoneproject infastructure/network.yaml infastructure/parameters.json

clouddelete:
	bash ./scriptssh/cloud_scripts.sh delete capstoneproject

dockercreate:
	bash ./scriptssh/cloud_scripts.sh create capstonedocker infastructure/docker.yaml infastructure/parameters.json

applicationcreate:
	bash ./scriptssh/cloud_scripts.sh create capstoneapplication infastructure/application.yaml infastructure/parameters.json

applicationupdate:
	bash ./scriptssh/cloud_scripts.sh update capstoneapplication infastructure/application.yaml infastructure/parameters.json

jenkinscreate:
	bash ./scriptssh/cloud_scripts.sh create capstonejenkins infastructure/jenkins.yaml infastructure/parameters.json

builddocker:
	docker build --tag=devopscapstone .


