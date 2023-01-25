setting registry mirror for docker to download on iran located servers:

```
/etc/docker/daemon.json
```

here you must apply a mirror:

```
{
  "registry-mirrors": ["https://docker.iranserver.com"]
}
```

you can change the registry with your own mirror.

for more information search about creating docker mirror on server. 
