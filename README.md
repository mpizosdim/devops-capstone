# Sample App
# Information

a simple flask app where when push a change on github repository it:
 * checks for errors on the code  
 * builds the containerized app
 * push the containirzed app on amazon ecr
 * publish the app in ecs
  
technology used for this application: 

 * simple flask app
 * jenkins
 * ec2 instance for jenkins
 * docker container to dockerize the flask app
 * amazon ecr to publish the container
 * amazon ecs to run the containirized application in production
 * cloudwatch for logs of the app
 
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
 * to create a ecr repository ```make dockercreate```
 * find ip from create ec2 instance for jenkins and enter on port 8080. Actions:  
     * Create profile
     * install blue ocean and assign repository.
     * install CloudBees for aws credentials and Pipeline: AWS Steps. assign aws credentials in global and name them `awscredentials`
     * change triggering to configure to 1 minute
     * for updating run `sudo service jenkins restart`
 * to create application ```make applicationcreate```  
 