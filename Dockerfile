FROM openshift/jenkins-1-centos7

# Installing jenkins plugins.
COPY plugins.txt /plugins.txt  
RUN /usr/local/bin/plugins.sh /plugins.txt

# copy jobs
COPY jobs /var/lib/jenkins/jobs

