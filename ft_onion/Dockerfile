# # Utiliser une image de base avec nginx et tor
# FROM debian:latest

# # Installer les paquets nécessaires
# RUN apt-get update && apt-get install -y \
#     nginx \
#     tor \
#     openssh-server \
#     && rm -rf /var/lib/apt/lists/*

# # Créer les répertoires nécessaires
# RUN mkdir -p /var/lib/tor/hidden_service /var/log/tor

# # Copier les fichiers de configuration
# COPY nginx.conf /etc/nginx/nginx.conf
# COPY index.html /var/www/html/index.html
# COPY torrc /etc/tor/torrc

# # ssh
# RUN groupadd sshgroup && \
# 	useradd -ms /bin/bash -g sshgroup test && \
# 	mkdir -p /home/test/.ssh
# COPY ./secrets/id_rsa.pub /home/test/.ssh/authorized_keys
# RUN chown test:sshgroup /home/test/.ssh/authorized_keys && \
# 	chmod 600 /home/test/.ssh/authorized_keys
# COPY sshd_config /etc/ssh/sshd_config


# # Configurer SSH pour écouter sur le port 4343
# RUN sed -i 's/#Port 22/Port 4343/' /etc/ssh/sshd_config

# # Activer le service SSH
# RUN mkdir /var/run/sshd

# # Changer les permissions des répertoires Tor
# RUN chown -R debian-tor:debian-tor /var/lib/tor /var/log/tor
# RUN chmod 700 /var/lib/tor/hidden_service

# # Exposer les ports nécessaires
# EXPOSE 8080 4343

# # Démarrer les services
# CMD service ssh start && service tor start && nginx -g 'daemon off;'

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
COPY sshd_config /etc/ssh/sshd_config

# Configurer SSH pour l'utilisateur `test`
RUN groupadd sshgroup && \
    useradd -ms /bin/bash -g sshgroup test && \
    mkdir -p /home/test/.ssh
COPY ./secrets/id_rsa.pub /home/test/.ssh/authorized_keys
RUN chown test:sshgroup /home/test/.ssh/authorized_keys && \
    chmod 600 /home/test/.ssh/authorized_keys
RUN chown -R test:sshgroup /home/test/.ssh && chmod 700 /home/test/.ssh

ARG PASSWORD
RUN echo "test:${PASSWORD}" | chpasswd

# Activer le service SSH
RUN mkdir /var/run/sshd

# Changer les permissions des répertoires Tor
RUN chown -R debian-tor:debian-tor /var/lib/tor /var/log/tor
RUN chmod 700 /var/lib/tor/hidden_service

# Exposer les ports nécessaires
EXPOSE 8080 4343

# Démarrer les services
CMD service ssh start && service tor start && nginx -g 'daemon off;'
