# Use the official Nginx base image
FROM mcr.microsoft.com/oss/nginx/nginx:1.15.5-alpine

# Set the working directory to where the files will be copied
WORKDIR /usr/share/nginx/html

# Copy the index.html file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
