# Setting the base image
FROM node:21-alpine

#Set the working directory in the container
WORKDIR /usr/src/app

#Copy package.json and package-lock.json to working directory
COPY package*.json ./

#run the command to install all the dependencies
RUN npm install

#Copy the rest of the code to the working directory
COPY . .

#Expose the port on which the Node.js app runs
EXPOSE 3000

#Command to run the node js application 
CMD ["npm", "start"]