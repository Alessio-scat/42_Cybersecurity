# Use an official Debian as a parent image
FROM debian:latest

# Install Nginx, OpenSSH, and Tor
RUN apt-get update && apt-get install -y \
    nginx \
    openssh-server \
    tor

# Copy configuration files
COPY nginx.conf /etc/nginx/nginx.conf
COPY sshd_config /etc/ssh/sshd_config
COPY torrc /etc/tor/torrc
COPY index.html /usr/share/nginx/html/index.html

# Configure SSH
RUN mkdir /var/run/sshd && echo 'root:root' | chpasswd

# Expose ports
EXPOSE 8000 4242

# Start services
CMD service nginx start && service ssh start && service tor start && tail -f /dev/null
