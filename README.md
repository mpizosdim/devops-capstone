# Sample App
## local initialization

```
python3 -m venv ~/.devopscapstone
source ~/.devopscapstone/bin/activate
make install
```

## Initialization
Order to initialize the project
 * To create the network infastructure: ```make cloudcreate```  
 * to create jenkins ec2: ```make jenkinscreate```  
 * find ip from create ec2 instance for jenkins and enter on port 8080. Create profile, install blue ocean and assing repository. for updating
 run `service jenkins restart` 
 

## Tasks

 - [x] flask app with login
 - [x] flask app comunicate with database
 - [x] post and get 
 - [x] initialize database
 - [x] initialize git
 - [x] create jenkins
 - [x] network template
 - [x] jenkins
 - [x] docker
 - [x] eks
 - [x] create initial files