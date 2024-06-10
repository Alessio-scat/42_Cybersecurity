FROM python:3.9-slim

RUN apt-get -y update \
	&& pip install scapy \
	&& apt -y install libpcap0.8

WORKDIR /app

COPY inquisitor.py .

# CMD ["python3", "inquisitor.py"]
CMD ["tail", "-f", "/dev/null"]