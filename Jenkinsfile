pipeline { 
    agent any
    stages {
        stage ('clean') {
            steps {
                cleanWs()
                git url: 'https://github.com/Parfla/LBG-Python-API-Base.git', branch: 'main'
            }
        }
        stage('Build step') {
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