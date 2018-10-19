FROM ubuntu:16.04
	RUN apt-get update
	COPY ./volume1 /data
	RUN apt-get install -y dos2unix
	RUN apt-get install -y npm
	RUN rm /bin/sh && ln -s /bin/bash /bin/sh
	RUN apt-get update && apt-get install -y -q --no-install-recommends \
        apt-transport-https \
        build-essential \
        ca-certificates \
        curl \
        git \
        libssl-dev \
        wget
	ENV NVM_DIR /usr/local/nvm
	ENV NODE_VERSION 6.9.1
	WORKDIR $NVM_DIR
	RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default
	RUN apt-get install -y openssh-server
	ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
	ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
	RUN apt-get update && apt-get install -y vim nano zsh curl sudo
	RUN  useradd admin && echo "admin:admin" | chpasswd && adduser admin sudo
	USER admin
	RUN sleep 100000
