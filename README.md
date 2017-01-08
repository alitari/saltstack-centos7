# Purpose
Building a saltstack playground based on CentOS-7 with minimal effort using docker.

### prerequisites
- [docker](https://www.docker.com)
- [docker-compose](https://docs.docker.com/compose/)

### usage
After cloning the repository go to the root dir and fire
```
docker-compose up -d
```
Check wether everything works fine with
```
docker-compose ps
```
This should output
```
           Name               Command    State         Ports
-------------------------------------------------------------------
saltstackcentos7_master_1    /start.sh   Up      4505/tcp, 4506/tcp
saltstackcentos7_minion1_1   /start.sh   Up      4505/tcp, 4506/tcp
saltstackcentos7_minion2_1   /start.sh   Up      4505/tcp, 4506/tcp
```

Now step in the master
```
docker exec -it saltstackcentos7_master_1 bash
```
and start execute salt commands. E.g.:
```
[root@master /]#  salt-key -L
[root@master /]#  salt '*' test.echo 'Hello master!'
```

Relevant master configuration files are mounted to the host. Find them
```
master/srv/salt
```
Grains are defined in environment variables. Find them in the docker-compose file.
See the example for adding users:

```
[root@master /]#  salt '*' state.apply
```
