pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/Harish1am/public-jenkins-docker.git' 
        DOCKER_IMAGE = 'flask-app:latest' 
        CONTAINER_PORT = '5002'
    }

    stages {
        stage('Clone Git Repository') {
            steps {
                script {
                    git branch: 'main', url: "${GIT_REPO}"
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh '''
                    docker build -t flask-app:latest .
                    '''
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh '''
                    docker run -d -p 5002:5002 flask-app:latest
                    '''
                    echo "Docker container is running and exposed on port 5002!"
                }
            }
        }
    }
}
