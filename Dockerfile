FROM debian:stable-slim

VOLUME /config /music

# Install Nginx
RUN apt update -y && apt install -y nginx

# Copy the Nginx config
COPY nginx_config /etc/nginx/sites-available/default
COPY src/html /usr/share/nginx/html

# Expose the port for access
EXPOSE 80/tcp

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]