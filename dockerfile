# Use official Node.js LTS version
FROM node:20-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json (if exists) from jenkins_flow folder
COPY jenkins_flow/package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the project files from jenkins_flow folder
COPY jenkins_flow/. .

# Expose the port your app runs on
EXPOSE 3000

# Command to run your app
CMD ["node", "index.js"]
