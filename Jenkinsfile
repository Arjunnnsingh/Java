pipeline {
    agent any

    tools {
        maven 'Maven 3'  // Yeh naam wahi hona chahiye jo Jenkins Global Tool Config mein diya hai
    }

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/Arjunnnsingh/Java.git', branch: 'main'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }
    }
}
