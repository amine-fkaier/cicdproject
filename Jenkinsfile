pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
         stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'sudo mvn docker:build'
            }
        }
        stage('Run Docker Image') {
            steps {
                sh 'sudo docker run -p 8080:8080 -t myapp'
            }
        }
    }
}
