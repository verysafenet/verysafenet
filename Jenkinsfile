pipeline {
    agent {
        docker {
            image 'hello-world-njs'
            args '-p 3000:3000'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                echo "sh npm install"
            }
        }
        stage('Test') {
            steps {
                echo "sh ./jenkins/scripts/test.sh"
            }
        }
        stage('Deliver') {
            steps {
                echo "sh ./jenkins/scripts/deliver.sh"
                echo "input message: Finished using the web site? (Click Proceed to continue)"
                echo "sh ./jenkins/scripts/kill.sh"
            }
        }
    }
}
