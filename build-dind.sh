#!/bin/sh

# Build the Node.js application image
docker build -t nodejs-app .

# Save the image to a tar file
docker save nodejs-app > nodejs-app.tar

# Print a message
echo "Node.js application image built and saved as nodejs-app.tar"
