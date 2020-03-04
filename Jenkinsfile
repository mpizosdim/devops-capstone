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
           sh 'make lint'
        }
      }
    }
  }
}
