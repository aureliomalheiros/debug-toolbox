FROM debian:12.9-slim

RUN apt update && apt install -y \
    python3 \
    git \
    nmap \
    iputils-ping \
    dnsutils \
    traceroute \
    tcpdump \
    curl \
    wget \
    net-tools \
    htop \
    strace \
    lsof \
    ncdu  \
    telnet \
    whois \
    jq \
    netcat-openbsd \
    vim \
    && rm -rf /var/lib/apt/lists/* 

ENTRYPOINT [ "tail", "-f", "/dev/null" ]
