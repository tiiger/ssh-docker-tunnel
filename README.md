**Attention!** This file is currently being written. Don’t follow instructions
without thinking on your own. Read the files before doing anything.

 

What is this?
=============

ssh-docker-tunnel is used to make the ssh git user on the host machine tunnel
all the git-magic in the docker container. This way we can use port 22 for ssh
on the host machine and as well for git on the docker container without changing
ports on any of those.

It may not be the best solution. But it works! \\o/

 

How does it work?
=================

We sync the authorized_keys from the docker container into the host machine (for
the git user that we created). We don’t want to change this file any further so
we hijack the gitlab-shell script that GitLab uses inside the authorized_keys
file in the command directive.

But our script pipes the git-magic into the docker container instead of doing it
all by itself.

 

Installation
============

*work in progress*

1.  adduser —system git

2.  add line from suoders in host sudoers file

3.  place docker-tunnel.sh where gitlab-shell resides

4.  add AuthorizedKeysCommand in sshd_config for git user

5.  profit.
