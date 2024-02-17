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
                sh "mvn clean package"
            }
        }
        stage("build docker image"){
            steps{
            sh "docker build -t shaif5/spring-petclinic:latest ."
        }
        }
        stage("docker push"){
            steps{
            withCredentials([string(credentialsId: 'dockerhub1', variable: 'dockerhub')]) {
            sh "docker login -u shaif5 -p ${dockerhub1}"
            }
        }
        } 
        stage("ansible playbook"){
            agent {
                label "ansible"
            }
            steps{
            sshagent(['login']) {
              sh 'ssh -o StrictHostKeyChecking=no ubuntu@172.31.20.63'
              sh "ansible-playbook /opt/test.yaml"
  }
}
        }
        }
}
