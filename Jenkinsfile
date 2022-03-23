pipeline {
    agent any
    stages {
        stage('GitClone') {
            steps {
                git branch: 'main', url: 'https://github.com/HaleemaEssa/first_jenkins_project.git'
            }
        }
    stage('Createdockerimage') {
            steps {
                sh 'docker build -t haleema/docker:latest .'
            }
        } 
    
    }
}
