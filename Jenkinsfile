pipeline {
    agent any
   stages {    
        
      stage('SCM') {
         steps {
            git 'https://github.com/preethi981/React-bookstore.git'
         }
      } 
        
      stage('Build Project') {
         steps {
            sh '''
            echo 'cd bookexplorer'
            '''
         }
      }
