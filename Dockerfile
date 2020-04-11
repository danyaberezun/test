# Use the official image as a parent image.
FROM berezun/cw-2020:latest

# Set the working directory.
# WORKDIR /usr/src/app

# Copy the file from your host to your current location.
# COPY package.json .

# Run the command inside your image filesystem.
RUN opam update && opam upgrade
