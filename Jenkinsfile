pipeline {
   agent { label 'java17' } 
   tools {
        maven 'maven3.9'
        jdk   'java17' 
    }
    stages{
        stage("git checkout"){
            steps{
            git branch: 'main', url: 'https://github.com/shaifalikhan5/spring-petclinic.git'
           }
        }
        stage("build stage"){
            steps{
                sh 'mvn clean package'
           }
        }
        stage("archieve artifacts"){
            steps{
                archiveArtifacts artifacts: 'target/*.jar'
                junit '**/target/surefire-reports/*.xml'
           }
        }
        stage("sonarqube scanner"){
           steps {
              withSonarQubeEnv(installationName:'sonarn',credentialsId: 'sonarqqqq') {  // sonarn means write the name of sonarserver when you add <sonarserverip>:9000
                sh 'mvn sonar:sonar'
              }
            }
        }

    }
}