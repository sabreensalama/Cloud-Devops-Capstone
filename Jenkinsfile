pipeline {
    environment {
    registry = "sabreensalama/fund-app"
    registryCredential = 'dockerhub'
    dockerImage = ''

    }
     agent any
     stages {
        stage('Build Imgae') {
             steps {
                  
                dockerImage = docker.build registry + ":$BUILD_NUMBER"

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

        stage('Upload image to dockerhub') {
             steps{
                 script {
            docker.withRegistry( '', registryCredential ) {
                dockerImage.push()
                       }
                    }
                  }
            }
     

        // stage('Check dockerfile for any error') {
        //       steps {
        //           sh 'hadolint Dockerfile'
        //       }
        //  }

 
}
}
