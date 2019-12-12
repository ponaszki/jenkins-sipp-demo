pipeline {
    agent {
        docker {
            image 'ctaloi/sipp:latest'
	    args '--entrypoint bash -v /home/SIPp-by-example:/sipp/examples' 
        }
    }
    stages {
        stage('Example test') {
	    options {
                timeout(time: 3, unit: 'MINUTES') 
            } 
            steps {
		echo ' Hello world !!'
                sh 'sipp -m 1 -bg -sn uas'
		sh 'sipp -m 1 -bg -sn uac 127.0.0.1' 
            }
        }
        stage('Example test 2') {
            steps {
		echo 'Hello world 2 !!'
            }
        }
    }
}
