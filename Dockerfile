FROM debian:stable-slim

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qq -y smstools \
    && rm -rf /var/lib/apt/lists/*

CMD ["smsd", "-t"]