pipeline {
    agent { label 'linux' }
    environment {
        DOCKERHUB_CREDENTIALS=credentials('haleema-dockerhub')
    }
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
    stage('Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        } 
    stage('runimage') {
            steps {
                sh 'docker run -t haleema/docker'
            }
         }    
    stage('pushimage') {
            steps {
                sh 'docker push haleema/docker:latest'
            }
        }
         
    
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
