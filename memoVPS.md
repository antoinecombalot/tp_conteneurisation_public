# Memo VPS OVH

## First connexion with password

## SSH stuff
- Add pub key to authorized_keys

Edit /etc/ssh/sshd_config
```bash
PubkeyAuthentication yes
AuthorizedKeysFile .ssh/authorized_keys
PasswordAuthentication no
```

- Edit host ssh config file
```bash
Host your_vps_domain_or_ip
  User debian
  HostName your_vps_domain_or_ip
  ForwardAgent yes
```
- Test ssh connection

## Install Docker and docker-compose

https://docs.docker.com/engine/install/debian/
Don't forget post installation steps to run docker without sudo
https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
If not working logout/login


## Setup Traefik 

https://gitlab.tetras-libre.fr/formation-epsi/traefik

