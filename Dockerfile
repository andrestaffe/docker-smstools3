FROM debian:stable-slim

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -qq -y smstools curl \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /var/log/smstools/smsd_stats /var/run/smstools

CMD ["smsd", "-t", "-s"]