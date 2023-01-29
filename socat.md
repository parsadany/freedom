for simple port forwarding in shell you need to install socat using apt or yum, then use this command:

```
socat TCP-LISTEN:<source_port>,fork TCP:<destination_ip>:<destination_port>
```


for local port forwarding set <destination_ip> 127.0.0.1 and that's all!
