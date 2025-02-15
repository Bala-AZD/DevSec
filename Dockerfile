# Use a lightweight base image
FROM alpine:latest

# Set a label
LABEL maintainer="pbsk1924@gmail.com"

# Define the command to run when the container starts
CMD ["echo", "Hello, World from Docker!"]
