pipeline {
  agent any
  stages {
    stage('Lint app') {
      steps {
        sh 'make lint'
      }
    }
    stage('Build') {
      steps {
        sh 'make builddocker'
      }
    }
    stage('Push') {
      steps {
        //withAWS(region:'eu-north-1',credentials:'awscredentials') {
           //withDockerRegistry([url: '401758331800.dkr.ecr.eu-north-1.amazonaws.com/capstone-repository', credentialsId: 'awscredentials']) {
            //sh 'docker tag mpizos/devopscapstone 401758331800.dkr.ecr.eu-north-1.amazonaws.com/capstone-repository:latest'
            //sh 'make lint'
          // }
        //}
          docker.withRegistry('401758331800.dkr.ecr.eu-north-1.amazonaws.com', 'ecr:eu-north-1:awscredentials') {
             docker.image('devopscapstone').push('latest')
        }
      }
    }
  }
}
