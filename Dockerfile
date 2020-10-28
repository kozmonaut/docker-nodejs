# Use node as a base image
FROM node

# Define working directory
WORKDIR '/docker-nodejs'

# Bundle app source
COPY . .

# Install project dependencies
RUN npm install

# Define a binding port
# EXPOSE 8080

# Run the app
CMD ["npm","start"]
