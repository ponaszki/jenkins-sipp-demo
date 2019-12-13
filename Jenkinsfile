pipeline {
    agent {
        docker {
            image 'ctaloi/sipp:latest'
        }
    }
    stages {
        stage('Example test') {
	    options {
                timeout(time: 3, unit: 'MINUTES') 
            } 
            steps {
		echo ' Hello world !!'
            }
        }
        stage('Example test 2') {
            steps {
		echo 'Hello world 2 !!'
            }
        }
    }
}
