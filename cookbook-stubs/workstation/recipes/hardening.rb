include_recipe 'cron'

cron_manage 'root' do
  action :allow
end
