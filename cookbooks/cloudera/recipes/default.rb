#
# Cookbook Name:: cloudera
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "cloudera-manager-daemons" do
  action :install
end

package "cloudera-manager-agent" do
  action :install
end

service "cloudera-scm-agent" do
  supports :restart => true, :reload => true
  action :enable
end

template "/etc/cloudera-scm-agent/config.ini" do
  source "config.ini.erb"
  variables({
    :server_port => node[:cloudera][:server_port],
    :server_host => node[:cloudera][:server_host]
  })
  notifies :restart, "service[cloudera-scm-agent]", :delayed
end
