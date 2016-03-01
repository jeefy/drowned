FROM python:2.7

RUN apt-get update && \
	apt-get -y install tcpdump git && \
	git clone https://github.com/nimia/public_drown_scanner.git /app && \
	cd /app && \
	pip install && \
	pip install enum pycrypto scapy pyasn1

WORKDIR /app

ENTRYPOINT ["python", "scanner.py"]

CMD ["google.com", "443"]