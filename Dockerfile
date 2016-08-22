FROM openshift/jenkins-1-centos7

# Installing jenkins plugins.
COPY plugins.txt /opt/openshift/configuration/plugins.txt 
RUN /usr/local/bin/plugins.sh /opt/openshift/configuration/plugins.txt

# copy jobs
COPY jobs /opt/openshift/configuration/jobs
COPY jobs /var/lib/jenkins/jobs
COPY config.xml /opt/openshift/configuration/config.xml

