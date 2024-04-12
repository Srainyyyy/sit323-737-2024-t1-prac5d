# Use the official Node.js image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /mnt/f/yyy/DEAKIN/IT/2024-T1/SIT323/5/5.1P

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Clear npm cache
RUN npm cache clean --force

# Install dependencies
RUN npm install

# Copy index.js file to the working directory
COPY index.js .

# Expose the port the app runs on
EXPOSE 8080

# Command to run the application
CMD ["node", "index.js"]
