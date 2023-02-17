#!/bin/bash
adduser --gecos "" --disabled-password "$1"
echo "$1:$2" | chpasswd

chsh -s /usr/sbin/nologin "$1"

echo -e 'Match User '"$1"'\n    PasswordAuthentication yes\n    ForceCommand /usr/sbin/nologin\n    PermitTTY no' >> /etc/ssh/sshd_config
systemctl reload sshd
echo 'user '"$1"' created successfully with password '"$2"
