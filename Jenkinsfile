pipeline {
    agent any

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

        stage('Deploy') {              // ✅ Now correctly inside stages
            steps {
                echo 'Running container...'
                sh 'docker run -d -p 3000:3000 jenkins_flow_app'
            }
        }
    }
}
