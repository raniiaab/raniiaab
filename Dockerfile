# Use a lightweight Node.js base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy your local `index.html` to the container's working directory
COPY index.html .

# Install a simple HTTP server
RUN npm install -g http-server

# Expose port 8080 (or any port you'd like)
EXPOSE 8080

# Define the default command to run the server
CMD ["http-server", ".", "-p", "8080"]
