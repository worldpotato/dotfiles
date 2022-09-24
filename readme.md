# Worldpotato dotfiles

Just my dotfiles. Use it with care! I don't care if these are usable by others.

To install them on my systems I use Ansible and run it with the script `./start_playbook.sh`.

## Ansible files

### hosts

File: `hosts.yml`

This file holds the dns names of the systems where you want to install the dotfiles


### vault file

the vault file contains the become password and should look like:

```
ansible_become_password: <password>
```

## Ansible tags

### install

All the install steps

### config

only installs/update the configurations


