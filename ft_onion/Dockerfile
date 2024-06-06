FROM debian:latest

RUN apt-get update && apt-get install -y \
    nginx \
    tor \
    openssh-server \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/lib/tor/hidden_service /var/log/tor

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /var/www/html/index.html
COPY torrc /etc/tor/torrc
COPY sshd_config /etc/ssh/sshd_config

RUN groupadd sshgroup && \
    useradd -ms /bin/bash -g sshgroup test && \
    mkdir -p /home/test/.ssh
COPY ./secrets/id_rsa.pub /home/test/.ssh/authorized_keys
RUN chown test:sshgroup /home/test/.ssh/authorized_keys && \
    chmod 600 /home/test/.ssh/authorized_keys
RUN chown -R test:sshgroup /home/test/.ssh && chmod 700 /home/test/.ssh

ARG PASSWORD
RUN echo "test:${PASSWORD}" | chpasswd

RUN mkdir /var/run/sshd

RUN chown -R debian-tor:debian-tor /var/lib/tor /var/log/tor
RUN chmod 700 /var/lib/tor/hidden_service

EXPOSE 8080 4343

CMD service ssh start && service tor start && nginx -g 'daemon off;'
