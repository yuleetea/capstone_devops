# Node image that React will run on
FROM node:latest
# add the source code of our application to the image. Creates a directory called "app"
WORKDIR /app
# copies the content our of package.json file TO the image root directory
COPY package.json ./
# runs and installs teh dependencies
RUN npm install
# copies all files in the local directory to the /app directory
COPY . .
# CMD starts up the application
CMD ["npm", "start"]