# Use an official Node.js runtime as a parent image
FROM node:22

# Set the working directory inside the container
WORKDIR /backend

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 5001

# Start the application
CMD ["npm", "start"]
