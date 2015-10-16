include_recipe 'android-sdk::default'

android_home = "/home/#{node['workstation']['user']}/android"

directory android_home do
  owner node['workstation']['user']
  group node['workstation']['user']
end

link "#{android_home}/sdk" do
  to '/usr/local/android-sdk'
  owner node['workstation']['user']
  group node['workstation']['user']
end
