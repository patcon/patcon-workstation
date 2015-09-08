source 'https://supermarket.chef.io'

cookbook 'apt',
  # Pending merge: Allow apt::unattended-upgrade to support debian platforms
  # Ref: https://github.com/chef-cookbooks/apt/pull/162
  github: 'patcon/apt',
  branch: 'feature/unattended-upgrade-debian'
cookbook 'chef-dk'
cookbook 'git'
cookbook 'janus'
cookbook 'mosh'
cookbook 'os-hardening'
cookbook 'pantry',
  # Pending merge: Add rudimentary debian support
  # See: https://github.com/opscode-cookbooks/pantry/pull/14
  github: 'patcon/pantry',
  branch: 'feature/debian-support'
cookbook 'ssh-hardening'
cookbook 'sudo'
cookbook 'user'
cookbook 'workstation',
  path: 'cookbook-stubs/workstation'
