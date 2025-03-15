# Use the official Nginx image as the base
FROM nginx:latest

# Set working directory
WORKDIR /etc/nginx

# Copy the production Nginx configuration
COPY nginx_prod/nginx.conf /etc/nginx/nginx.conf

# Ensure directories exist for serving static files
RUN mkdir -p /var/www/shop_front /var/www/shop_back_static

# Copy static files for frontend and backend
COPY shop_front/shop_front /var/www/shop_front
COPY shop_back/shop_back_static /var/www/shop_back_static

# Set appropriate permissions
RUN chmod -R 755 /var/www/shop_front /var/www/shop_back_static

# Expose the default Nginx port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
