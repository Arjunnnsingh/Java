pipeline {
    agent any

    tools {
        maven 'Maven 3'
    }

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Arjunnnsingh/Java.git'
            }
        }


        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t hello-world-app .'
            }
        }

        stage('Docker Run') {
            steps {
                sh 'docker run -d -p 8080:8080 hello-world-app'
            }
        }
    }
}

