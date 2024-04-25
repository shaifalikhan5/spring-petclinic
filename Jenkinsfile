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
                junit 'build/reports/**/*.xml'
           }
        }
        stage("sonarqube scanner"){
            steps{
                sh 'mvn sonar:sonar -Dsonar.token='438eefd2fc16d4afbf9dea83e71e708dc1bf2ee6'
           }
        }

    }
}