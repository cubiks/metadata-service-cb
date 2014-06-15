user "chef" do
    supports :manage_home => true
    comment "Chef User"
    home    "/home/chef"
    shell   "/bin/bash"
    action  :create
end

directory "/home/chef/.ssh" do
  user    "chef"
  group   "chef"
  mode    0750
  action  :create
end

#cookbook_file "/home/chef/.ssh/id_rsa" do
#  source  "ssh/id_rsa"
#  owner   "chef"
#  group   "chef"
#  mode 0600
#end
