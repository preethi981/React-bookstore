pipeline {
    agent any
    
     
    
   stages {    
        
      stage('SCM') {
         steps {
            git 'https://github.com/preethi981/React-bookstore.git/'
         }
      } 
        
      stage('Build Project') {
         steps {
            sh label: '', script: '''
                sudo su 
                sudo npm install -y
                sudo npm run build
            '''
         }
      }
      stage('building docker image'){
        steps{
            sh label: '', script: '''

            sudo docker build . -t bookkeepingimage .
            
             '''
           }
    }
      }
   }
