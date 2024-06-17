# Use the official Node.js image with Alpine Linux as the base image
FROM node:18-alpine3.14

# Set the working directory within the container to /app
WORKDIR /app

# Copy both the server and client code to the working directory
COPY . .

# Install dependencies for your client and server applications
RUN npm install

# Define a default command to start the server (replace "app.js" with the actual entry point for your server)
CMD ["node", "app.js"]
