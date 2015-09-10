include_recipe "homesick"

user = node['workstation']['user']

execute "add-github-to-known-hosts" do
  user user
  command "ssh-keyscan -t rsa github.com >> /home/#{user}/.ssh/known_hosts"
  only_if "grep github.com /home/#{user}/known_hosts"
end

homesick_castle "dotfiles-pub" do
  user user
  source "git@github.com:patcon/dotfiles-pub.git"
  action :install
end
