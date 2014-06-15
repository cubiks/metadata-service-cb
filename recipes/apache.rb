package 'apache2' do
  action :install
end

log "Installing apache2"

service 'apache2' do
  action [ :enable, :start ]
end

cookbook_file '/var/www/index.html' do
  source 'index.html'
  mode '0644'
end
