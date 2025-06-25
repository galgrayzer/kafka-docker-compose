FROM docker/compose:debian-1.29.2

#  install git
RUN apt-get update && \
    apt-get install -y git
