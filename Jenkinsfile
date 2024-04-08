pipeline {
  agent any
  stages{
    stage("checkout"){
      steps{
        checkout scm
      }
    }
    stage("Build Image"){
      steps{
        sh 'docker build -t my.node.app:1.0 .'
      }
    }
    stage("Docker Push"){
      steps{
        withCredentials([usernamePassword(credentialsId:'docker_cred', passwordVariable:'DOCKERHUB_PASSWORD', usernameVariable:'DOCKERHUB_USERNAME')]) {
          sh "echo \$DOCKERHUB_PASSWORD | docker login --username \$DOCKERHUB_USERNAME --password-stdin"
          sh "docker tag my_node_app:1.0 anna5851/nodejs-project-3:1.0"
          sh "docker push anna5851/nodejs-project-3:1.0"
          sh "docker logout"
        }
      }
    }
  }
}
