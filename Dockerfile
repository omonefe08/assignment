# Use the official httpd image from the Docker Hub
FROM httpd:alpine

WORKDIR /usr/local/apache2/htdocs/

# Copy the HTML file to the Apache html directory
COPY  . .

# Expose port 80 to the outside world
EXPOSE 80
