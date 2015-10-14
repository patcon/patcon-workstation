task :prepare do
  sh 'berks vendor cookbooks'
end

desc 'Bootstrap the workstation'
task :bootstrap => :prepare do
  sh 'bundle exec knife zero bootstrap workstation --run-list="role[workstation]"'
end

desc 'Converge the workstation'
task :converge => :prepare do
  sh 'bundle exec knife zero converge name:workstation'
end

task :default do
  exec "rake --tasks"
end
