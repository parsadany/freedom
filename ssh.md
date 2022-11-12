you can use screen or tmux to keep alive your session on bridge.

bridge:

```
ssh -N -L 0.0.0.0:<random_bridge_port>:127.0.0.1:<upstream_ssh_port> <upstream_username>@<upstream_ip> -p<upstream_ssh_port>
```

upstream:

tunnel users, should have no shell access, so we do this:

```
chsh -s /usr/sbin/nologin <username>
```

then in the  ```sshd_config```  file at the end of the file add this block and replace the ```<username>```:

```
Match User <username>
    PasswordAuthentication yes
    ForceCommand /usr/sbin/nologin
    PermitTTY no
```

client:

direct:

```
ssh -N -D 127.0.0.1:<random_local_port> <upstream_username>@<upstream_ip> -p<upstream_ssh_port>
```

# for multihop usage:

on desktop:

```
ssh -N -L <bridge_socks_port>:127.0.0.1:<random_local_socks_port> <bridge_username>@<bridge_ip> -p<bridge_ssh_port>
```


on android ```http injector``` use:

```
ssh -N -D 127.0.0.1:<random_local_port> <bridge_username>@<bridge_ip> -p<same_ramdom_bridge_port>
```