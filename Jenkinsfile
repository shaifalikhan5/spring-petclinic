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
    }
}