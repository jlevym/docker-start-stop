FROM ubuntu:v3.0
COPY ./volume1 /data
COPY ./.ssh /root/.ssh

ENV WORKING_DIR /data
WORKDIR $WORKING_DIR

RUN git clone git@github.com:lergo/lergo-protractor-tests.git
WORKDIR lergo-protractor-tests
RUN npm install

