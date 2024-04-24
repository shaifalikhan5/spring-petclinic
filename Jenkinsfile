pipeline {
    agent any
    stages{
        stage("first stage"){
            steps{
                sh "mvn -v"
            }
        }
        stage("second stage"){
            steps{
                sh "mvn clean package"
            }
        }
    }
}