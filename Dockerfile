from buildpack-deps:jessie

# Install git-crypt
RUN cd /tmp                                                                 && \
    git clone https://github.com/AGWA/git-crypt.git                         && \
    cd git-crypt                                                            && \
    make                                                                    && \
    make install PREFIX=/usr/local

# Install gnupg and gnupg-agent, gnupg-agent is used to keep and
# release the passphrase to git-crypt when the time comes
RUN apt-get update                                                          && \
    apt-get install -y gnupg                                                && \
    apt-get install -y gnupg-agent
