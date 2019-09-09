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
    # config-file-provider \
    credentials-binding \
    credentials \
    docker-plugin \
    docker-slaves \
    configuration-as-code \
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

COPY resources/basic-security.groovy /usr/share/jenkins/ref/init.groovy.d/basic-security.groovy
# COPY resources/maven-global-settings-files.xml /usr/share/jenkins/ref/maven-global-settings-files.xml

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

USER root

# # https://github.com/popularowl/cloud-squirrels/tree/master/jenkins/jenkins-setup-docker-terraform/files
# # https://jenkins.io/doc/book/installing/
# # https://github.com/vimagick/dockerfiles/tree/master/jenkins
# FROM jenkins/jenkins:lts-alpine
# # FROM jenkins

# # install jenkins plugins
# COPY ./assets/plugins.txt /usr/share/jenkins/plugins
# RUN while read i ; \ 
#     do /usr/local/bin/install-plugins.sh $i ; \
#     done < /usr/share/jenkins/plugins

# ENV JENKINS_USER admin
# ENV JENKINS_PASS admin

# # allows to skip Jenkins setup wizard
# ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# # Jenkins runs all grovy files from init.groovy.d dir
# # use this for creating default admin user
# COPY assets/user.groovy /usr/share/jenkins/ref/init.groovy.d/

# # volume for Jenkins settings
# VOLUME /var/jenkins_home
