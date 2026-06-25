pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repo...'
                git 'https://github.com/your-username/your-repo.git'
            }
        }

        stage('Install') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'
            }
        }

        stage('Run App') {
            steps {
                echo 'Starting app...'
                sh 'nohup node index.js > app.log 2>&1 &'
            }
        }
    }
}