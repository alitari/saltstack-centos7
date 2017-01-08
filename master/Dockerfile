FROM centos:7
MAINTAINER alitari

COPY salt.repo /etc/yum.repos.d

RUN yum -y install systemd-python && yum -y install epel-release && yum -y install salt-ssh salt-syndic salt-cloud

RUN yum -y install salt-master 

# Add salt master config files
ADD master /etc/salt/master

# Expose volumes
VOLUME ["/etc/salt", "/var/cache/salt", "/var/logs/salt", "/srv/salt"]

# Exposing salt master and api ports
EXPOSE 4505 4506

# Add and set start script
ADD start.sh /start.sh
CMD ["bash", "start.sh"]