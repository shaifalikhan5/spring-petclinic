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
        stage("build maven"){
            steps{
                sh "mvn -v"
            }
        }
        stage("build docker image"){
            steps{
            echo "loginimage"
        }
        }
        stage("docker push"){
            steps{
            withCredentials([string(credentialsId: 'dockerhub1', variable: 'dockerhub')]) {
            echo "loginpush"
            }
        }
        } 
        stage("ansible playbook"){
            steps{
            sshagent(['login']) {
              sshagent (credentials: ['deploy-dev']) {
              sh 'ssh -o StrictHostKeyChecking=no ubuntu@172.31.20.63'
              echo "login done ansible"
  }
}
        }
        }
}
}