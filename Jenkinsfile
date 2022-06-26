// Powered by Infostretch 

timestamps {

node () {

	stage ('group-23 - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'git-credentials', url: 'https://github.com/Nkingsley12/maven-web-application']]]) 
	}
	stage ('group-23 - Build') {
 	
// Unable to convert a build step referring to "hudson.plugins.timestamper.TimestamperBuildWrapper". Please verify and convert manually if required.		// Maven build step
	withMaven(maven: '(Default)') { 
 			if(isUnix()) {
 				sh "mvn clean install " 
			} else { 
 				bat "mvn clean install " 
			} 
 		}		// Maven build step
	withMaven(maven: '(Default)') { 
 			if(isUnix()) {
 				sh "mvn sonar:sonar " 
			} else { 
 				bat "mvn sonar:sonar " 
			} 
 		} 
	}
}
}