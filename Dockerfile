# Example of Dockerfile for a Next.js project

# Base image - which we have used alpine
FROM node:22-alpine

# Set the working directory - /app name is preferred but can use any name
WORKDIR /app

# Copy the entire project to the working directory
COPY . .

# Installing dependencies or building the project
RUN npm install

# Expose the port the app runs on
EXPOSE 3000

# Final command to run the app
CMD ["npm", "run", "dev"]
