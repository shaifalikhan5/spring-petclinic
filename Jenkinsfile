pipeline {
   agent any 
   tools {
        maven 'maven3.9'
        jdk   'java17' 
    }
    environment {
    registry = "shaif5/springpetclinc:1.0"
    registryCredential = ''
}
    stages{
        stage("git checkout"){
            steps{
            git branch: 'main', url: 'https://github.com/shaifalikhan5/spring-petclinic.git'
           }
        }
        stage("build stage"){
            steps{
                sh 'whoami'
           }
        }
        stage("archieve artifacts"){
            steps{
                archiveArtifacts artifacts: 'target/*.jar'
                junit '**/target/surefire-reports/*.xml'
           }
        }
       /*  stage("sonarqube scanner"){
           steps {
              withSonarQubeEnv(installationName:'sonarn',credentialsId: 'sonarqqqq') {  // sonarn means write the name of sonarserver when you add <sonarserverip>:9000
                sh 'mvn sonar:sonar'
              }
            }    
        }
        stage("Quality Gate") {
          steps {
           timeout(time: 1, unit: 'HOURS') {
           waitForQualityGate abortPipeline: true , credentialsId: 'sonarqqqq'
            }
            }
        }
        stage("dockerbuid") {
          steps {
           sh 'docker build -t shaif5/springpetclinic:1.0 .'
            }
            }
        stage('push') {
          steps {
           sh '''docker build -t shaif5/springpetclinic:1.0 .
                 docker run -d --name shaif -p 8080:8080 shaif5/springpetclinic:1.0
              '''
            }
          */   }    
    }

