pipeline { 
    agent any
    environment {
        DOCKER_IMAGE="lbg"
        PORT=5001  
    }
    stages {
        stage ('clean up') {
            steps {
                sh "sh cleanup.sh"
            }
        }
        stage ('Build Image') {
            steps {
                sh "sh builddockerimage.sh"
            }
        }
        stage ('Modify Image') {
            steps {
                sh "sh modifyapp.sh"
            }
        }
        stage('Run Docker step') {
            steps {
                sh "sh setup.sh"
            }
        }
        stage('Script Execution step') {
            steps {
                sh "sh mainscript.sh"
            }
        }
    }
}