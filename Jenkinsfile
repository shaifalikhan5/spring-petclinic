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
            echo "good"
        }
        }
        stage("docker push"){
            steps{
            withCredentials([string(credentialsId: 'dk', variable: 'dockerhub1')]) {
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
