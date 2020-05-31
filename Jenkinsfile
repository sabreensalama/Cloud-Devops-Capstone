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
                  
                 sh 'tidy  -q -e ./users_auth/templates/*.html'
                 echo "Linting Dockerfile"
                 sh 'hadolint Dockerfile'
                 echo "Linting  python file"
                 sh '	pylint --disable=R,C,W1203 ./users_auth/views.py'
   
             }
         }

        stage('Testing Stage using pytest') {
             steps {
                  
                 sh 'python -m pytest -vv --cov=myrepolib ./users_auth/tests/*.py'
   
             }
         }
     

        // stage('Check dockerfile for any error') {
        //       steps {
        //           sh 'hadolint Dockerfile'
        //       }
        //  }

 
}
}
