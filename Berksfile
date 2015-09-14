source 'https://supermarket.chef.io'

cookbook 'apt',
  # Pending merge: Allow apt::unattended-upgrade to support debian platforms
  # Ref: https://github.com/chef-cookbooks/apt/pull/162
  github: 'patcon/apt',
  branch: 'feature/unattended-upgrade-debian'
cookbook 'chef-dk'
cookbook 'fail2ban'
cookbook 'fish-shell'
cookbook 'git'
cookbook 'homesick',
  github: 'patcon/chef-homesick',
  branch: 'feature/add-embedded-ruby-to-path'
cookbook 'janus'
cookbook 'mosh'
cookbook 'ntp'
cookbook 'oh-my-zsh'
cookbook 'os-hardening',
  # Pending merge: Don't step into other cookbook's namespaces (ie `packages` cookbook)
  # Ref: https://github.com/hardening-io/chef-os-hardening/pull/88
  github: 'patcon/chef-os-hardening',
  branch: 'feature/better-namespace'
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
