# Transaction_Microservice

**Docker Setup -->**

**Prerequisite**: _docker network create infra-network_

- docker network create transactionms-network

- docker build -t transactiondb-i ./src/db

- docker build -t transactionms-i .

- docker run --name transactiondb-c --network transactionms-network -dp 127.0.0.1:3006:3306 transactiondb-i

- docker run --name transactionms-c --network transactionms-network -dp 127.0.0.1:3003:3003 transactionms-i

- docker network connect infra-network transactionms-c

_OR_

#remove relative path in dockerfile for this
- docker compose up

- docker network connect infra-network transactionms-c

**Kubernetes Setup -->**

**Prerequisite**: _minikube start_

- kubectl apply -f transactiondb-deployment.yml
  
- kubectl apply -f transactionms-deployment.yml

- kubectl get pods

- kubectl port-forward <dbpodname> 3006:3306

- kubectl port-forward <mspodname> 3003:3003

----------------------------------------------------

- kubectl delete service transactionms-service

- kubectl delete service transactiondb-service

- kubectl delete deployment transactionms-deployment

- kubectl delete deployment transactiondb-deployment
