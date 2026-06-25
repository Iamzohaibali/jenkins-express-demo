pipeline {
agent any

stages {
    stage('Build Docker Image') {
        steps {
            sh 'docker build -t express-app .'
        }
    }

    stage('Stop Old Container') {
        steps {
            sh '''
            docker stop express-container || true
            docker rm express-container || true
            '''
        }
    }

    stage('Run Container') {
        steps {
            sh 'docker run -d -p 3000:3000 --name express-container express-app'
        }
    }
}

}