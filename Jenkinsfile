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
        withAWS(region:'eu-north-1',credentials:'awscredentials') {
           docker.withRegistry('401758331800.dkr.ecr.eu-north-1.amazonaws.com/capstone-repository') {
            docker.image('mpizos/devopscapstone').push('latest')
           }
        }
      }
    }
  }
}
