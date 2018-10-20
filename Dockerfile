FROM ubuntu:v3.0
COPY ./volume1 /data
RUN pwd
COPY ./.ssh /root/.ssh

ENV WORKING_DIR /data
WORKDIR $WORKING_DIR
RUN ls -ll
RUN cat ~/.ssh/id_rsa.pub

RUN git clone git@github.com:lergo/lergo-protractor-tests.git
RUN cd lergo-protractor-tests
RUN npm install 

