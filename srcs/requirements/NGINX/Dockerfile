# Use the official Nginx image as the base image
FROM nginx:latest

# Create directories in the container to copy files
RUN mkdir -p /etc/nginx/conf.d
RUN mkdir -p /usr/share/nginx/html

# Copy your custom nginx.conf file to the container
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

# Copy your HTML files to the default Nginx web root directory
COPY ./tools/html /usr/share/nginx/html

# Expose port 443 for incoming HTTP traffic
EXPOSE 443

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]