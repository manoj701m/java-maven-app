pipeline {
	agent {
		label 'master'
	}
	tools {
        maven 'maven1' 
    }
	stages {
		stage ('build') {
			steps {
				sh 'mvn clean install -DskipTests'
			}
		
		}
		stage ('test') {
			steps {
				sh 'mvn test'
			}
			post {
				always {
					junit 'target/surefire-reports/*.*xml'
				}
			}
		}
		stage ('run') {
			steps {
				sh './scripts/deliver.sh'
			}
		
		}
	}
}
