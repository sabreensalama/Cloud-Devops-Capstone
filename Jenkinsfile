pipeline {
    environment {
    registry = "sabreensalama/fund-app"
    registryCredential = 'dockerhub'
    dockerImage = ''

    }
     agent any
     stages {
        stage('Building image') {
            steps{
                script {
                dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
            }
        stage('Linting HTML') {
             steps {
                  
                 sh 'tidy  -q -e Cloud-Devops-Capsonee/users_auth/templates/*.html'
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
