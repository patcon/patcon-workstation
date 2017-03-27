task :prepare do
  sh 'berks vendor cookbooks'
end

task :bootstrap, [:ssh_user] => :prepare do |t, args|
  args.with_defaults(
    # Default to root when bootstrapping
    :ssh_user => 'root'
  )

  sh "knife zero bootstrap workstation --run-list='role[workstation]' --ssh-user=#{args[:ssh_user]}"
end

desc 'Converge the workstation'
task :converge, [:ssh_user] => :prepare do |t, args|
  args.with_defaults(
    # Default to root when bootstrapping
    :ssh_user => 'root'
  )

  sh "knife zero converge name:workstation --ssh-user=#{args[:ssh_user]}"
end

task :default do
  exec "rake --tasks"
end
