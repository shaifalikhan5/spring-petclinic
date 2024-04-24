pipeline {
    agent any
    environment {
        PATH="$PATH:/home/ubuntu/maven3.9/bin"
    }
    stages{
        stage("first stage"){
            steps{
                git branch: 'main', url: 'https://github.com/shaifalikhan5/spring-petclinic.git'
               } 
        }
        stage("build stage"){
            steps{
                sh "sudo mvn clean package"
            }
        }
    }
}   