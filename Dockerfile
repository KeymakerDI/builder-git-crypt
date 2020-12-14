from maven:3.6.3-jdk-11-slim

RUN apt-get update \
    && \
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
	    expect-dev \
        python3 \
        groff \
        python3-pip \
        zip \
        jq \
        less \
    && \
    pip3 install --no-cache-dir --upgrade \
        pip \
        setuptools \
        awscli==1.18.196 \
        s3cmd==2.0.2 \
        python-magic \
        botocore==1.19.36 \
        boto3 \
    && \
        ln -s /usr/bin/python3 /usr/bin/python
ENTRYPOINT ["/bin/bash"]

RUN mkdir -p /tmp \
    && git-lfs install \
    && cd /tmp \
    && git clone https://github.com/AGWA/git-crypt.git \
    && cd git-crypt \
    && make \
    && make install PREFIX=/usr/local \
