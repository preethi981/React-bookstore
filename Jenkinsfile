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
                sudo -s 
                 npm install -y
                 npm run build
            '''
         }
      }
      stage('building docker image'){
        steps{
            sh label: '', script: '''

             docker build . -t bookkeepingimage .
            
             '''
           }
    }
      }
   }
