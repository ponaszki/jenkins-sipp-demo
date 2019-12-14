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
		sh '/home/GitHub/jenkins-sipp-demo/runAndTestSipp.sh 5060:5060/udp /home/ponaszki/SIPp-by-example/:/home/scenarios /home/scenarios/Basic/uac.xml 127.0.0.1'
            }
        }
        stage('Example test 2') {
            steps {
		echo 'Hello world 2 !!'
            }
        }
    }
}
