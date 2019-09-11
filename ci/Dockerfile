# https://github.com/liatrio/alpine-jenkins
# FROM jenkins/jenkins:2.154-alpine
FROM jenkins/jenkins:lts-alpine

USER root

RUN apk -U add docker
# Setup Jenkins
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN apk add --update shadow \
    && groupadd -g 50 staff \
    && usermod -a -G staff jenkins

USER jenkins
RUN /usr/local/bin/install-plugins.sh \
    role-strategy \ 
    ec2 \
    pipeline-aws \
    locale \
    blueocean \
    build-environment \
    cloudbees-folder \
    credentials-binding \
    credentials \
    docker-plugin \
    docker-slaves \
    git \
    groovy \
    http_request \
    job-dsl \
    jobConfigHistory \
    naginator \
    pam-auth \
    pipeline-utility-steps \
    slack \
    workflow-aggregator \
    sonar 

COPY assets/basic-security.groovy /usr/share/jenkins/ref/init.groovy.d/basic-security.groovy

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

USER root