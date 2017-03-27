chef_ingredient 'install chefdk' do
  product_name 'chefdk'
  action :install
  channel :current
  version '1.3.23'
end
