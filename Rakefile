task :prepare do
  sh 'berks vendor cookbooks'
end

task :bootstrap, [:ssh_user] => :prepare do |t, args|
  args.with_defaults(
    # Default to root when bootstrapping
    :ssh_user => 'root'
  )

  ssh_user = args[:ssh_user]

  sh "knife zero bootstrap workstation --run-list='role[workstation]' --ssh-user=#{ssh_user}"
end

desc 'Converge the workstation'
task :converge => :prepare do
  sh 'knife zero converge name:workstation'
end

task :default do
  exec "rake --tasks"
end
