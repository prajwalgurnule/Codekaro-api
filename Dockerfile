# Use the Node.js image as a base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app runs on (default for Express is 3000)
EXPOSE 3000

# Define the environment variable for MongoDB connection
# Replace <your_connection_string> with your MongoDB URI
ENV MONGO_URI=mongodb+srv://prajwal:prajwal@project.ty9xa.mongodb.net/mydatabase?retryWrites=true&w=majority

# Command to start the application
CMD ["npm", "start"]
