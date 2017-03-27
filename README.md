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

Install knife-zero plugin:

```
chef gem install knife-zero
```

```
rake bootstrap # first chef run
rake converge  # subsequent chef runs
```

## Usage

Can use `SSH` or `MOSH` for accessing server:

    ssh workstation

If you have
[compiled](https://github.com/mobile-shell/mosh/wiki/Build-Instructions)
your local `mosh` for forward agent from this branch of
[`rinne/mosh`](https://github.com/rinne/mosh/tree/ssh-agent-forwarding-ng):

    mosh --forward-agent workstation

#### Tips

When using `tmux`, you usually can't use agent forwarding when re-using
an old detached sessions that the original SSH connection expired on.
This, run withing the re-attached `tmux` session, resolves that:

    source ~/.ssh/latestagent
