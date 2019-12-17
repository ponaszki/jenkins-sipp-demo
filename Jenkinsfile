pipeline {
    agent {
        docker {
            image 'sipp:latest'
            args '-v /home/GitHub/jenkins-sipp-demo:/home/GitHub/jenkins-sipp-demo -v /home/errors:/sipp' 
        }
    }
    stages {
        stage('Example test') {
            steps {
		//sh '/home/GitHub/jenkins-sipp-demo/runAndTestSipp.sh 5060:5060/udp /home/ponaszki/SIPp-by-example/:/home/scenarios /home/scenarios/Basic/uac.xml 127.0.0.1'
		//echo 'echo from sipip docker!'
		sh 'sipp -bg -m 1 -sn uas'
		sh 'sipp -m 1 -trace_err -sn uac 127.0.0.1'
            }
        }
        stage('Example test 2') {
            steps {
		echo 'Hello world 2 !!'
            }
        }
    }
}
