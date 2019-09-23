FROM jenkins/jenkins:lts-alpine

USER root

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN apk add --update shadow \
    && groupadd -g 50 staff \
    && usermod -a -G staff jenkins

USER jenkins
RUN /usr/local/bin/install-plugins.sh \
    role-strategy \ 
    ec2 \
    locale \
#    blueocean \
    build-environment \
    cloudbees-folder \
    docker-plugin \
    git \
    groovy \
    job-dsl \
    jobConfigHistory \
    naginator \
    pam-auth \
    pipeline-utility-steps \
    sonar 

COPY assets/basic-security.groovy /usr/share/jenkins/ref/init.groovy.d/basic-security.groovy

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

USER root