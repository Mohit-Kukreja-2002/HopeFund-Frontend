# Use the official Node.js 20.x LTS image as base
FROM node:20

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port Next.js is running on
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "dev"]
