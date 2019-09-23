FROM jenkins/ssh-slave

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    && apt-get install curl sudo -yq \
    && curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
    && apt-get install nodejs -yq \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 jenkins -p jenkins