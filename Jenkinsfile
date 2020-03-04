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
       docker.withRegistry('401758331800.dkr.ecr.eu-north-1.amazonaws.com/capstone-repository', 'ecr:us-east-1:demo-ecr-credentials') {
            docker.image('mpizos/devopscapstone').push('latest')
      }
    }
  }
}
