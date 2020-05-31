pipeline {
     agent any
     stages {
        stage('Build Imgae') {
             steps {
                  
                 sh 'docker build -t  fund-app .'
                 sh 'echo "succefully built"'
   
             }
         }
        stage('Linting HTML') {
             steps {
                  
                 sh 'tidy  -q -e /users_auth/templates/*.html'
                 echo "Linting Dockerfile"
                 sh 'hadolint Dockerfile'
   
             }
         }

        // stage('Check dockerfile for any error') {
        //       steps {
        //           sh 'hadolint Dockerfile'
        //       }
        //  }

 
}
}
