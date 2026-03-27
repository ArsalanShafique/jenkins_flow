pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ArsalanShafique/jenkins_flow.git'
            }
        }

        stage('Build') {
            steps {
                sh 'echo Build step'
            }
        }

        stage('Test') {
            steps {
                sh 'echo Test step'
            }
        }
    }
}
