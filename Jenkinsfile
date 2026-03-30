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

    }

      stage('Deploy') {
            steps {
                echo 'Running container...'
                sh 'docker run -d -p 3000:3000 jenkins_flow_app'
            }
}
}
