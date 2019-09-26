FROM jenkins/slave:alpine

USER root

RUN groupadd -g 50 staff \
    && usermod -a -G staff jenkins

RUN echo "install node.js" 
#RUN apk add --update nodejs npm autoconf automake
#RUN apk add --update alpine-sdk autoconf libtool libltdl bash nodejs npm
RUN apk add --update autoconf libtool libltdl bash nodejs npm

USER jenkins

# FROM jenkins/slave:latest

# USER root

# RUN echo "install node.js" 
# RUN apt-get update \
#     && apt-get -y --no-install-recommends install \
#     && apt-get install curl sudo -yq \
#     && curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
#     && apt-get install nodejs -yq \
#     && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# USER root