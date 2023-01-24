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
                echo "Testes and Trusted!"
            }
        }
        stage('build us') {
            steps {
                sh 'apt update'
            }
        }
    }
}
