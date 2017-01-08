FROM centos:7
COPY salt.repo /etc/yum.repos.d

RUN yum -y install systemd-python && yum -y install epel-release && yum -y install salt-ssh salt-syndic salt-cloud

RUN yum -y install salt-minion
# Add minion config files
ADD minion /etc/salt/minion

# Expose volumes
VOLUME ["/etc/salt", "/var/cache/salt", "/var/logs/salt", "/srv/salt"]

# Exposing salt master and api ports
EXPOSE 4505 4506

ADD start.sh /start.sh
CMD ["/start.sh"]