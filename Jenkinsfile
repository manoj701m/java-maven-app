pipeline {
	agent any
	stages {
		stage ('build') {
			steps {
				sh 'mvn clean install -DskipTests'
			}
		
		}
		stage ('test') {
			steps {
				sh 'mvn tes'
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
