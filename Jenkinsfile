pipeline { 
    agent any 
    stages {
        stage('Build') { 
            steps { 
                sh 'echo "Build1"' 
                sh 'terraform init'
            }
        }
        stage('Test'){
            steps {
                sh 'date'
                
            }
        }
        stage('Deploy') {
            steps {
                sh 'date'
            }
        }
    }
}
