pipeline {
    agent any
    stages {
        stage('GitClone') {
            steps {
                git branch: 'main', url: 'https://github.com/HaleemaEssa/first_jenkins_project.git'
            }
        }
    stage('Test') {
            steps {
               echo "Testing Completed"
            }
        } 
    stage('Build') {
            steps {
                echo "Building Completed"
                
            }
        }    
    }
}
