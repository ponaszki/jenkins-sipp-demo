pipeline {
    agent none
    //agent {
    //    docker {
    //        image 'sipp:latest'
    //        args '-v /home/GitHub/jenkins-sipp-demo:/home/GitHub/jenkins-sipp-demo -v /home/errors:/sipp' 
    //    }
    //}
    stages {
        stage('Example test') {
	    agent {
                docker {
                    image 'sipp:latest'
                    args '-v /home/GitHub/jenkins-sipp-demo:/home/GitHub/jenkins-sipp-demo -v /home/errors:/sipp'
                }
            }
            steps {
		//sh '/home/GitHub/jenkins-sipp-demo/runAndTestSipp.sh 5060:5060/udp /home/ponaszki/SIPp-by-example/:/home/scenarios /home/scenarios/Basic/uac.xml 127.0.0.1'
		//echo 'echo from sipip docker!'
		sh 'nohup sipp -bg -m 1 -sn uas &'
		sh 'whoami'
		sh 'sipp -m 1 -trace_err -sn uac 127.0.0.1'
            }
        }
        stage('Example test 2') {
	    agent {
                docker {
                    image 'sipp:latest'
                    args '-v /home/GitHub/jenkins-sipp-demo:/home/GitHub/jenkins-sipp-demo -v /home/errors:/sipp'
                }
            }
            steps {
		echo 'Hello world 2 !!'
            }
        }
    }
}
