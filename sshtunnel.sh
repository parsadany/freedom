#!/bin/bash
#adduser "$1"
adduser --gecos "" --disabled-password "$1"
chpasswd <<<"$1:$2"

usermod --password "$2" "$1"
chsh -s /usr/sbin/nologin "$1"

echo -e 'Match User '"$1"'\n    PasswordAuthentication yes\n    ForceCommand /usr/sbin/nologin\n    PermitTTY no' >> /etc/ssh/sshd_config
systemctl reload sshd
#systemctl restart ssh
