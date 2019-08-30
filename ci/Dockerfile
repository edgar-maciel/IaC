# https://github.com/popularowl/cloud-squirrels/tree/master/jenkins/jenkins-setup-docker-terraform/files
# https://jenkins.io/doc/book/installing/
# https://github.com/vimagick/dockerfiles/tree/master/jenkins
FROM jenkins/jenkins:lts-alpine

# install jenkins plugins
COPY ./assets/plugins.txt /usr/share/jenkins/plugins
RUN while read i ; \ 
    do /usr/local/bin/install-plugins.sh $i ; \
    done < /usr/share/jenkins/plugins

ENV JENKINS_USER admin
ENV JENKINS_PASS admin

# allows to skip Jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Jenkins runs all grovy files from init.groovy.d dir
# use this for creating default admin user
COPY assets/user.groovy /usr/share/jenkins/ref/init.groovy.d/

# volume for Jenkins settings
VOLUME /var/jenkins_home