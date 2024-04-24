pipeline {
    agent any
    environment {
        PATH="$PATH:/home/ubuntu/maven3.9/bin"
    }
    stages{
        stage("first stage"){
            steps{
                sh "mvn -v"
            }
        }
        stage("second stage"){
            steps{
                sh "mvn -v"
            }
        }
        // stage("build artifact"){
        //     steps{
                
        //     }
        // }

    }
}