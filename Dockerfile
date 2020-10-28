# Use node as a base image
FROM node

# Define working directory and its content
WORKDIR '/docker-nodejs'
COPY ./package.json ./

# Install project dependencies
RUN npm install

# Bundle app source
COPY . .

# Define a binding port
EXPOSE 8080

# Run the app
CMD ["npm","start"]
