pipeline {
  agent {
    docker {
      image 'abhishekf5/maven-abhishek-docker-agent:v1'
      args '--user root -v /var/run/docker.sock:/var/run/docker.sock' // mount Docker socket to access the host's Docker daemon
    }
  }
  stages {
    stage('Checkout') {
      steps {
        sh 'echo passed'
        git branch: 'main', url: 'https://github.com/Gurjit-Aman/cafe-website.git'
      }
    }
    stage('Build Docker Image') {
        environment {
        DOCKER_IMAGE = "guraman/cafe-web-img:${BUILD_NUMBER}"
        }
            steps {
                script {
                    // Build the Docker image
                    sh 'docker build -t $DOCKER_IMAGE .'
            }
        }
    } 
    stage('Run Docker Container') {
            steps {
                script {
                   docker.image("guraman/cafe-web-img:${BUILD_NUMBER}").run("-d -p 8085:80")
                }
            }
        }
    }
  }    
