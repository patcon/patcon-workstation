require_recipe 'ark'

arch = case node['kernel']['machine']
       when 'x86_64' then 'amd64'
       when 'i386' then '386'
       end

version = node['workstation']['hub']['version']

ark 'hub' do
  url "https://github.com/github/hub/releases/download/v#{version}/hub-linux-#{arch}-#{version}.tar.gz"
  version version
  has_binaries ['hub']
end
