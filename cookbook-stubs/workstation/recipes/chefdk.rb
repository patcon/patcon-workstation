chef_ingredient 'install chefdk' do
  product_name 'chefdk'
  action :install
  channel :stable
  version '1.3.13'
end
