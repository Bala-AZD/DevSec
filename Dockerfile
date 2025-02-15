# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application files to the working directory
COPY . .

# Build the application (if needed)
RUN npm run build

# Expose the application port (if your app runs on a specific port)
EXPOSE 3000

# Define the command to run the app
CMD ["npm", "start"]
