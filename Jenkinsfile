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
        sh "docker images"
        sh "eval \$(aws ecr get-login --no-include-email --region eu-north-1 | sed 's|https://||')"
        sh "docker tag devopscapstone 401758331800.dkr.ecr.eu-north-1.amazonaws.com/devopscapstone"
        sh "docker push 401758331800.dkr.ecr.eu-north-1.amazonaws.com/devopscapstone"
       }

      }
    }
  }
}
