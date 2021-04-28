pipeline {
    agent { label 'dind' }
    environment {
        PASS=credentials('registry-pass')
		USER=credentials('registry-login') 		
    }
    stages {
        stage('Build') {
            steps {
	       sh './jenkins/build/maven.sh mvn -B -DskipTests clean package'
               sh './jenkins/build/build.sh'
            }
	    post {
               success {
                  archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
       	 }
    	}
        }
        stage('Test') {
            steps {
                sh './jenkins/test/maven.sh mvn test'
            }
 	    post {
               always {
                   junit 'java-app/target/surefire-reports/*.xml' 
	    }
        }
        }
        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }
    }
}
