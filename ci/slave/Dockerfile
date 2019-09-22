FROM jenkins/ssh-slave

# Install selected extensions and other stuff
RUN apt-get update \
    && apt-get -y --no-install-recommends install \
    && apt-get install curl sudo -yq \
    && curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
    && apt-get install nodejs -yq \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*