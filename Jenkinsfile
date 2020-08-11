pipeline {
  agent any
  stages{
    stage('Build'){
       steps {
            sh label: '', script: '''
                sudo -s 
                 npm install -y
                 npm run build
            '''
         }
    }
      stage('Archive'){
        steps{
          echo "Archive Project"
          archiveArtifacts artifacts: '**/*.jar', followSymlinks: false
      }
    }
      stage('Build Docker Image'){
        steps{
          echo "Building Docker Image"
      }
    }
      stage('Push Docker Image'){
        steps{
          echo "Pushing Docker Imaget"
      }
    }
      stage('Deploy to Dev'){
        steps{
          echo "Deploying to Dev Environment"
      }
    }
  }
}
