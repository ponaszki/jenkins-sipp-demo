pipeline {
    agent {
        docker {
            image 'ctaloi/sipp:latest' 
        }
    }
    stages {
        stage('Example test') { 
            steps {
		echo ' Hello world !!'
                sh 'sipp -m 1 -bg -sn uas'
		sh 'sipp -m 1 -bg -sn uac 127.0.0.1 
            }
        }
        stage('Example test 2') {
            steps {
		echo 'Hello world 2 !!'
            }
        }
    }
}
