# Chef Workstation

This is a chef-repo intended to allow me to work more easily on remote
servers. The goal is to work as much as possible on a remote machine so
that the prospect of losing my laptop is much less threatening.

## Setup

```
# ~/.ssh/config
Host workstation
  ForwardAgent yes
  IdentitiesOnly yes
```

```
# /etc/hosts
1.2.3.4.5 workstation
```

```
rake bootstrap # first chef run
rake converge  # subsequent chef runs
```

## Usage

Can use `SSH` or `MOSH` for accessing server:

    ssh workstation # agent forwarding

    mosh workstation # agent forwarding unsupported
