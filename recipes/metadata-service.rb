git "/home/chef/metadata" do
  repository "https://#{node['github']['username']}:#{node['github']['password']}@github.com/cubiks/Metadata.git"
  revision "master"
  action :sync
  user "chef"
  group "chef"
  notifies :run, "bash[metadata-service-package]", :immediately
end

bash "metadata-service-package" do
  cwd   "/home/chef/metadata"
  user  "chef"
  code <<-EOH
    mvn package
  EOH
end