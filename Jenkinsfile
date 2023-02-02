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
//         stage('Run Docker Image') {
//             steps {
//                 sh 'docker run -p 2375:2375 -t aminefkaier/springbootcicd'
//             }
//         }
        stage('Push image to Hub'){
            steps{
                script{
                withCredentials([string(credentialsId: 'devops', variable: 'devops')]) {
                    sh "docker login -u aminefkaier -p ${123456789}"
                }
                   sh 'docker push aminefkaier/devops-project'
                }
            }
        }
    }
}
