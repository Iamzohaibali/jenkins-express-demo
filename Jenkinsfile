pipeline {
agent any

```
stages {
    stage('Install') {
        steps {
            sh 'npm install'
        }
    }

    stage('Stop Old App') {
        steps {
            sh '''
            pkill -f "node index.js" || true
            '''
        }
    }

    stage('Run App') {
        steps {
            sh 'nohup node index.js > app.log 2>&1 &'
        }
    }
}
```

}
