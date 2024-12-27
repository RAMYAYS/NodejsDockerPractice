# Use an official Node.js image as the base
FROM node:20.15-buster

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to start the app
CMD ["node", "app.js"]
