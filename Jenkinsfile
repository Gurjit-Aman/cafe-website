pipeline {
    agent any
    environment {
        DOCKER_IMAGE = 'Gurjit-Aman/website-cafe-img:v3'
    }
    stages {
        stage('Clone Repository') {
            steps {
                // Clone the Git repository containing your website template
                git 'https://github.com/Gurjit-Aman/cafe-website.git'
            }
        }
        
        stage('Build Docker Image') {
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
                    // Run the Docker container to host the website
                    sh 'docker run -d -p 8080:80 $DOCKER_IMAGE'
                }
            }
        }
    }
} 
