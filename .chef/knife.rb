local_mode true

cookbook_path 'cookbooks'

knife[:bootstrap_version] = '12.9.38'
knife[:use_sudo] = true
