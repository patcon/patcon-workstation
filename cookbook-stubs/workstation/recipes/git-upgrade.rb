include_recipe 'apt'

# Ban backports by default
apt_preference 'wheezy-backports' do
  glob '*'
  pin 'release a=wheezy-backports'
  pin_priority '-1'
end

%w(
  git
  git-core
  git-man
).each do |pkg|
  apt_preference pkg do
    pin 'release a=wheezy-backports'
    pin_priority '600'
  end
end

include_recipe 'git'
