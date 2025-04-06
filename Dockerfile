# Use official Node.js image
FROM node:18

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app
COPY . .

# Expose app port
EXPOSE 8080

# Command to run app
CMD ["npm", "start"]
