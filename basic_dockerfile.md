# Dockerfile
A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.

#### On a very basic level a `Dockerfile` consists two things:
1. A base image
2. A series of commands that are run on top of the base image


Example of a simple Dockerfile for a `Next.js` application:
```Dockerfile
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
```

- `WORKDIR`: Sets the working directory for any `RUN`, `CMD`, `ENTRYPOINT`, `COPY` and `ADD` instructions that follow it.
- `COPY`: Copies files from the Docker host to the Docker image.
- `RUN`: Executes any commands in a new layer on top of the current image and commit the results.
- `EXPOSE`: Informs Docker that the container listens on the specified network ports at runtime.
- `CMD`: Provides defaults for an executing container. `There can only be one CMD instruction in a Dockerfile.`
- `ENV`: Sets the environment variable `key` to the value `value`.
