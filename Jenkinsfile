pipeline {
    agent any
    environment {
        GCR_CREDENTIALS_ID = 'lee-w3-sprint-secretfile' // The ID you provided in Jenkins credentials
        IMAGE_NAME = 'lee-build-1'
        BUILD_NUMBER = '2'
        GCR_URL = 'gcr.io/lbg-mea-build-c19'
        PROJECT_ID = 'lbg-mea-build-c19'
        CLUSTER_NAME = 'demo-cluster'
        LOCATION = 'europe-west2-c'
        CREDENTIALS_ID = '25af774c-f308-4c6d-a2e5-284c0e763c98'
    }
        stages {
        stage('Build and Push to GCR') {
            steps {
                script {
                    // Authenticate with Google Cloud
                    withCredentials([file(credentialsId: GCR_CREDENTIALS_ID, variable: 'GOOGLE_APPLICATION_CREDENTIALS')]) {
                        sh 'gcloud auth activate-service-account --key-file=$GOOGLE_APPLICATION_CREDENTIALS'
                    }
                    // Configure Docker to use gcloud as a credential helper
                    sh 'gcloud auth configure-docker --quiet'
                    // Build the Docker image
                    sh "docker build -t ${GCR_URL}/${IMAGE_NAME}:${BUILD_NUMBER} ."
                    // Push the Docker image to GCR
                    sh "docker push ${GCR_URL}/${IMAGE_NAME}:${BUILD_NUMBER}"
                }
            }
        }
    }
}