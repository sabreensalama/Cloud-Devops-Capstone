# Cloud-Devops-Capstone
develop a CICD pipline for a  microservice application built in django framework then develop a Continous integration then set up Continous deployment 


# Steps
- create Dockerfile for my fund application
- create a CICD pipne with four stages
   - building dockerized image of the application
   - linting HTML
   - Unit Testing
   - Push image to dockerHub
- Create the Infrastructure of deployment using CloudFormation
- Create Deployment using Kubernetes

# Structure
- K8 deployment : contain deployment in kubernetes
     - deployment.yml : for deploying my app
     - deployment-service.yml : for createing service to access my app
     - run_kubernetes.sh : to run all .yml files
- infrastructure : contain infrastructure built in cloudFormation
- results : screenshots of my output
- Dockerfile
- Jenkinsfile

# Output
- Pipline's output
![pipline output](https://github.com/sabreensalama/Cloud-Devops-Capstone/blob/master/results/Screenshot%20from%202020-05-31%2021-45-39.png)

- Infrastructure output
![infrastructure output](https://github.com/sabreensalama/Cloud-Devops-Capstone/blob/master/results/screencapture-us-west-2-console-aws-amazon-cloudformation-home-2020-05-31-22_26_28.png)
- Deployment's output
![deployment output](https://github.com/sabreensalama/Cloud-Devops-Capstone/blob/master/results/Screenshot%20from%202020-06-01%2003-06-01.png)

   
