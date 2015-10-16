source 'https://supermarket.chef.io'

# Helper method
def cookbook_stub(name)
  cookbook name, path: "cookbook-stubs/#{name}"
end

cookbook 'android-sdk',
  # Pending release
  # See: https://github.com/gildegoma/chef-android-sdk/issues/23
  github: 'gildegoma/chef-android-sdk'
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
cookbook 'mosh',
  github: 'patcon/mosh-cookbook',
  branch: 'feature/source-install'
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
cookbook 'python'
cookbook 'ssh-hardening'
cookbook 'sudo'
cookbook 'user'

cookbook_stub 'workstation'
cookbook_stub 'patcon_android-sdk'
