# Utiliser une image de base avec nginx et tor
FROM debian:latest

# Installer les paquets nécessaires
RUN apt-get update && apt-get install -y \
    nginx \
    tor \
    && rm -rf /var/lib/apt/lists/*

# Créer les répertoires nécessaires
RUN mkdir -p /var/lib/tor/hidden_service /var/log/tor

# Copier les fichiers de configuration
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/html/index.html
COPY torrc /etc/tor/torrc

# Changer les permissions des répertoires Tor
RUN chown -R debian-tor:debian-tor /var/lib/tor /var/log/tor
RUN chmod 700 /var/lib/tor/hidden_service

# Exposer les ports nécessaires
EXPOSE 8080

# Démarrer les services
CMD service tor start && nginx -g 'daemon off;'
