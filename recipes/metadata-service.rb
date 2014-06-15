git "/home/chef/metadata" do
  repository "https://#{node['github']['username']}:#{node['github']['password']}@github.com/cubiks/Metadata.git"
  revision "master"
  action :sync
  user "chef"
  group "chef"
end