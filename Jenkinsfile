

pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/Harish1am/public-jenkins-docker.git'  
        DOCKER_IMAGE = 'flask:latest'  
        CONTAINER_PORT = '5002'
    }

    stages {
        stage('Clone Git Repository') {
            steps {
                script {
                    git url: "${GIT_REPO}", branch: 'main'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh "docker run -d -p ${CONTAINER_PORT}:${CONTAINER_PORT} ${DOCKER_IMAGE}"
                    echo "Docker container is running and exposed on port ${CONTAINER_PORT}!"
                }
            }
        }
    }
}
