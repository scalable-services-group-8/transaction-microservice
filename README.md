# Transaction_Microservice

docker network create transactionms-network

docker build -t transactiondb-i ./src/db

docker build -t transactionms-i .

docker run --name transactiondb-c --network transactionms-network -dp 127.0.0.1:3006:3306 transactiondb-i

docker run --name transactionms-c --network transactionms-network -dp 127.0.0.1:3003:3003 transactionms-i
