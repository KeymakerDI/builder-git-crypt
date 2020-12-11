from maven:3.5-jdk-11-slim

RUN apt-get update && \
    apt-get install -y \
        bash \
        g++ \
        make \
        libffi-dev \
        openssl \
        git \
        git-lfs \
        gnupg \
	    libssl-dev \
        gnupg-agent \
	    expect \
	    expect-dev

RUN mkdir -p /tmp \
    && git-lfs install \
    && cd /tmp \
    && git clone https://github.com/AGWA/git-crypt.git \
    && cd git-crypt \
    && make \
    && make install PREFIX=/usr/local \
