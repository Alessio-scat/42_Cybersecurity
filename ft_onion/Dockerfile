# Utiliser une image de base avec nginx et tor
FROM debian:latest

# Installer les paquets nécessaires
RUN apt-get update && apt-get install -y \
    nginx \
    tor \
    openssh-server \
    && rm -rf /var/lib/apt/lists/*

# Créer les répertoires nécessaires
RUN mkdir -p /var/lib/tor/hidden_service /var/log/tor

# Copier les fichiers de configuration
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/html/index.html
COPY torrc /etc/tor/torrc

# ssh
COPY sshd_config /etc/ssh/sshd_config


# Configurer SSH pour écouter sur le port 4343
RUN sed -i 's/#Port 22/Port 4343/' /etc/ssh/sshd_config

# Activer le service SSH
RUN mkdir /var/run/sshd

# Changer les permissions des répertoires Tor
RUN chown -R debian-tor:debian-tor /var/lib/tor /var/log/tor
RUN chmod 700 /var/lib/tor/hidden_service

# Exposer les ports nécessaires
EXPOSE 8080 4343

# Démarrer les services
CMD service ssh start && service tor start && nginx -g 'daemon off;'
