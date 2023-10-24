FROM node:18-alpine

WORKDIR /bookingmicroservice

COPY . .

WORKDIR /bookingmicroservice/src

# install dependencies
RUN yarn install --production 

#command
CMD ["node", "index.js"]

#  port from container
EXPOSE 3002