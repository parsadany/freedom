This repo gives you information and scripts about configuring servers without free internet connection.

the sshtunnel.sh file is a command line script that create a user for ssh tunnel with restricted access tested only on 'UBUNTU 20.04'. this must be run on a free server.

if you had permission problem run this command:

```chmod 755 <path_to_file>```

the command usage:

```./sshtunnel.sh username password```

also sudo prefix is needed if you are not logged in with root user.

you can use it on the restricted server, you can set your all_proxy environment variable to ```socks5h://127.0.0.1:<ssh_tunnel_local_port>```

note that this is not gonna working for all type of connections, for example 'python pip'!

more scripts will be added as soon as they are ready to publish.
