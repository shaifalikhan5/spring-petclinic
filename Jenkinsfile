pipeline{
    agent {
        label "java17"
    }
        tools{
            jdk "java17"
            maven "maven3.9"
        }
    stages{
        stage("scm"){
            steps{
                git branch: 'main', credentialsId: 'githubtoken', url: 'https://github.com/shaifalikhan5/spring-petclinic.git'
            }
        }
        stage("build stage"){
            steps{
            sh "mvn package"
        }
        }
        stage("build docker image"){
            steps{
            sh "docker build -t shaif5/spc:1 ."
        }
        }
        stage("docker push"){
            steps{
            withCredentials([string(credentialsId: 'dockerhub1', variable: 'dockerhub')]) {
             sh "docker login -u shaif5 -p ${dockerhub}"
             sh "docker push shaif5/spc:1"
            }
        }
        } 
    }
}