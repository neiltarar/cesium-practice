# select base image
FROM node:16.15.1-alpine3.15

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Installing everything at the moment because building typescript in here
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# serve the app on port 3000
EXPOSE 3000

# start command
CMD ["npm", "run", "start"]