#
# Cookbook:: ssh
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package "sshd" do
 action :install
end
cookbook_file "/etc/ssh/sshd_config" do
 source "sshd_config"
end
service "sshd" do
 action :start
end
