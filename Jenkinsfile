pipeline { 
    agent any 
    stages {
        stage("terraform Setup"){
            steps {
               sh 'sudo cp /home/ec2-user/terraform /usr/bin/'
             }
        }
        stage("cloning project from git"){
          steps {
              sh 'git clone https://github.com/aleti-pavan/terraclass.git;pwd;cd terraclass;pwd'
          }
        } 
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
