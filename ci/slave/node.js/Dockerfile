FROM jenkins/slave:alpine

USER root

# RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
# RUN apk add --update shadow \
#     && groupadd -g 50 staff \
#     && usermod -a -G staff jenkins

RUN echo "install packages" 
RUN apk add --update \
    alpine-sdk \
    libtool \
    libltdl \
    autoconf \
    automake \
    bash \
    g++ \
    libc6-compat \
    libjpeg-turbo-dev \
    libpng-dev \
    make \
    nasm \
    nodejs \
    npm

USER root