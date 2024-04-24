pipeline {
    agent any
    tools {
        // Define Maven and Java tools
        maven "maven3.9"
        jdk "java17"
    }
    stages {
        stage("Checkout") {
            tools {
             // Define Maven and Java tools
             maven "maven3.9"
             jdk "java17"
    }
            steps {
                // Checkout the code from the GitHub repository
                git branch: 'main', url: 'https://github.com/shaifalikhan5/spring-petclinic.git'
            }
        }
        stage("Build") {
            steps {
                // Execute Maven command to clean and package the project
                sh "mvn clean package"
            }
        }
        stage("build & SonarQube analysis") {
          node {
              withSonarQubeEnv('sonarqube') {
                 sh 'sonar:sonar'
              }
          }
    }
}
