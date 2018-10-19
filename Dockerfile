FROM jlevym/ubuntu:v2.02
COPY ./volume1 /data
COPY ./ssh /home/admin/.ssh
ENV WORKING_DIR /data
WORKDIR $WORKING_DIR
RUN ls -ll
