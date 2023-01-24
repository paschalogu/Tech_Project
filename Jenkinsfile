pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "Hello World!"
            }
        }   
        stage('test') {
            steps {
                echo "Testes and Trusted! hhh"
            }
        }
        stage('Final') {
            steps {
                echo "THis is it Testes and Trusted! hhh"
            }
        }
        stage('Final update') {
            steps {
                sh "usr/bin/apt-get update"
            }
        }
    }
}
