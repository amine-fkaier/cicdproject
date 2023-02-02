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
                sh 'mvn docker:build'
            }
        }
        stage('Run Docker Image') {
            steps {
                sh 'docker run -p 2375:2375 -t aminefkaier/springbootcicd'
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'aminefkaier', variable: 'amine')]) {
                        sh "docker login -u aminefkaier -p ${amine1997}"
                   }
                   sh 'docker push aminefkaier/springbootcicd'
                }
            }
        }
    }
}
