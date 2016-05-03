zookeeper-docker
================

Probably only works in clustered mode and with Swarm.  Set the environment variables `SERVER_ID` and `SERVERS`.

See the `docker-compose.yml` file for an example.

```
$ docker-compose -p zookeeper up -d
```

You may want to use these instead:

* [https://github.com/jplock/docker-zookeeper]
* [https://github.com/fabric8io/fabric8-zookeeper-docker]
