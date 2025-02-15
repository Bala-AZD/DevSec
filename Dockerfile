# Use a lightweight base image
FROM alpine:latest

# Set a label
LABEL maintainer="pbsk1924@gmail.com"

# Define the command to run when the container starts
CMD ["echo", "Hello, World from Docker!"]

# Use a lightweight base image
FROM alpine:latest

# Install a simple web server
RUN apk add --no-cache busybox-extras

# Expose port 8080
EXPOSE 8080

# Start a simple HTTP server
CMD ["httpd", "-f", "-p", "8080"]

