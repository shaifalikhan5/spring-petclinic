pipeline {
   agent any 
   tools {
        maven 'maven3.9'
        jdk   'java17' 
    }
    stages{
        stage("git checkout"){
            steps{
            sh "mvn -v"
           }
        }
    }
}