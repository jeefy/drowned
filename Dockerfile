FROM python:2.7

RUN apt-get update && \
	apt-get -y install tcpdump && \
	pip install enum pycrypto scapy pyasn1

COPY public_drown_scanner /app

WORKDIR /app

ENTRYPOINT ["python", "scanner.py"]

CMD ["google.com", "443"]