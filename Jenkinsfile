pipeline {
   agent any 
   tools {
        maven 'maven3.9'
        jdk 'java17' 
    }
    stages{
        stage("git checkout"){
            steps{
            git branch: 'main', credentialsId: 'github', url: 'https://github.com/shaifalikhan5/spring-petclinic.git'
           }
        stage("build stage"){
          sh "mvn clean package"
        }  
        }
    }
}