pipeline {
    agent any
 options {
        skipDefaultCheckout true   // ✅ must be true or false
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Running container...'
                sh '''
                docker rm -f jenkins_flow_app || true
                docker run -d -p 3000:3000 --name jenkins_flow_app jenkins_flow_app
                '''
            }
        }
    }
}
