pipeline {
     agent any
     stages {
        stage('Build Imgae') {
             steps {
                  
                 sh 'docker build -t  fund-app .'
                 sh 'echo "succefully built"'
   
             }
         }
        stage('Test HTML') {
             steps {
                  
                 sh 'docker build -t  fund-app .'
                 sh 'echo "succefully built"'
   
             }
         }
        // stage('Check dockerfile for any error') {
        //       steps {
        //           sh 'hadolint Dockerfile'
        //       }
        //  }

 
}
}
