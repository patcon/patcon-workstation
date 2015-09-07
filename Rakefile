task :prepare do
  sh 'berks vendor cookbooks'
end

task :bootstrap => :prepare do
  sh 'bundle exec knife zero bootstrap workstation --run-list="role[workstation]"'
end

task :converge => :prepare do
  sh 'bundle exec knife zero converge name:workstation'
end
