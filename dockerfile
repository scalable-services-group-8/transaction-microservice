FROM node:18-alpine

WORKDIR /transactionmicroservice

COPY . .

WORKDIR /transactionmicroservice/src

# install dependencies
RUN yarn install --production 

#command
CMD ["node", "index.js"]

#  port from container
EXPOSE 3002