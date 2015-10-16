local_mode true

cookbook_path 'cookbooks'

knife[:bootstrap_version] = '12.4.4'
knife[:use_sudo] = true
