# Use the official Nginx image as base
FROM nginx:alpine

# Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your web application files into the container
COPY ./ /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
