# Use official Nginx image as base
FROM nginx:alpine

# Copy all website files to the default folder in Nginx
COPY ./ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
