# run deployment file
kubectl create -f deployment.yml
kubectl create -f deployment-service.yml

# chech status of deployment
kubectl rollout status deployment myapp

# describe deployment
kubectl describe deployment
