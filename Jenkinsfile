pipeline {
    agent any

    environment {
        DOCKERHUB_USERNAME = 'manoj701m'
        DOCKERHUB_PASSWORD = 'Mrmanojn1'
        IMAGE_NAME = 'tomcat8custom'
        TAG = "${env.BUILD_NUMBER}"
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout the Git repository
                    git branch: 'master', url: 'https://github.com/manoj701m/java-maven-app.git'
                }
            }
        }

        stage('Build and Push Docker Image') {
            steps {
                script {
                    // Docker login using hardcoded credentials
                    echo "Logging in to Docker Hub"
                    sh "docker login -u ${DOCKERHUB_USERNAME} -p ${DOCKERHUB_PASSWORD}"

                    // Build Docker image
                    echo "Building Docker image"
                    sh "docker build -x -t ${DOCKERHUB_USERNAME}/${IMAGE_NAME}:${TAG} ."
                    
                    // Push Docker image to Docker Hub
                    echo "Pushing Docker image to Docker Hub"
                    sh "docker push -x ${DOCKERHUB_USERNAME}/${IMAGE_NAME}:${TAG}"
                }
            }
        }
    }

    post {
        always {
            script {
                // Cleanup: Logout from Docker Hub after the job is done
                echo "Logging out from Docker Hub"
                sh "docker logout"
            }
        }
    }
}
