#!/usr/bin/groovy

pipeline {
    agent {
        docker {
            image 'azagramac/maven'
            args '-v /root/.m2:/root/.m2'
        }
    }

    environment {
        CLAVE = "valor"
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }

        stage('Coverage') {
            steps {
                sh './coverage.sh'
            }
        }



    }
}